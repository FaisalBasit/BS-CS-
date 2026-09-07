using System;
using System.Threading;

public class X
{
    public void Display1(X obj2)
    {
        Console.WriteLine("Thread1 waiting for thread2 to release lock");
        lock (obj2)
        {
            Console.WriteLine("Deadlock occurred");
        }
    }

    public void Display2(X obj1)
    {
        Console.WriteLine("Thread2 waiting for thread1 to release lock");
        lock (obj1)
        {
            Console.WriteLine("Deadlock occurred");
        }
    }
}

public class Thread1
{
    private X obj1, obj2;

    public Thread1(X obj1, X obj2)
    {
        this.obj1 = obj1;
        this.obj2 = obj2;
    }

    public void Run()
    {
        lock (obj1)
        {
            try
            {
                Thread.Sleep(1000);
            }
            catch (ThreadInterruptedException ie)
            {
                Console.WriteLine(ie);
            }
            obj2.Display2(obj2);
        }
    }
}

public class Thread2
{
    private X obj1, obj2;

    public Thread2(X obj1, X obj2)
    {
        this.obj1 = obj1;
        this.obj2 = obj2;
    }

    public void Run()
    {
        lock (obj2)
        {
            try
            {
                Thread.Sleep(1000);
            }
            catch (ThreadInterruptedException ie)
            {
                Console.WriteLine(ie);
            }
            obj1.Display1(obj1);
        }
    }
}

public class Deadlock
{
    public static void Main(string[] args)
    {
        X obj1 = new X();
        X obj2 = new X();

        Thread1 t1 = new Thread1(obj1, obj2);
        Thread2 t2 = new Thread2(obj1, obj2);

        Thread thread1 = new Thread(new ThreadStart(t1.Run));
        Thread thread2 = new Thread(new ThreadStart(t2.Run));

        thread1.Start();
        thread2.Start();
    }
}

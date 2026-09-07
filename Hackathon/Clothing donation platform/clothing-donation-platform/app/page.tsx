import React from "react";
import Image from "next/image";
import { Button } from "@/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardFooter,
  CardHeader,
  CardTitle,
} from "@/components/ui/card"
// Assuming you have a Card component
import { FaDonate, FaRecycle, FaTag, FaTruck } from "react-icons/fa"; // Icons for the cards

export default function Home() {
  return (
    <main>
      <section className="container px-4 py-10 mx-auto lg:h-128 lg:space-x-8 lg:flex lg:items-center">
        <div className="w-full text-center lg:text-left lg:w-1/2 lg:-mt-8">
          <h1 className="text-3xl leading-snug text-gray-800 dark:text-gray-200 md:text-4xl">
            Welcome to our <span className="font-semibold">blog</span> where we
            share <br className="hidden lg:block" /> insightful articles on{" "}
            <span className="font-semibold underline decoration-primary">
              Tailwind CSS
            </span>{" "}
            and more!
          </h1>
          <p className="mt-4 text-lg text-gray-500 dark:text-gray-300">
            Discover open-source resources, tutorials, and templates to{" "}
            <br className="hidden lg:block" /> enhance your web development
            journey and create stunning applications!
          </p>
          <div className="mt-6 bg-transparent border rounded-lg dark:border-gray-700 lg:w-2/3 focus-within:border-primary focus-within:ring focus-within:ring-primary dark:focus-within:border-primary focus-within:ring-opacity-20">
            <form
              action="https://www.creative-tim.com/twcomponents/search"
              method="get"
              className="flex flex-wrap justify-between md:flex-row"
            >
              <input
                type="search"
                name="query"
                placeholder="Search Articles"
                required
                className="flex-1 h-10 px-4 m-1 text-gray-700 placeholder-gray-400 bg-transparent border-none appearance-none lg:h-12 dark:text-gray-200 focus:outline-none focus:placeholder-transparent focus:ring-0"
              />
              <button
                type="submit"
                className="flex items-center justify-center w-full p-2 m-1 text-white transition-colors duration-300 transform rounded-lg lg:w-12 lg:h-12 lg:p-0 bg-primary hover:bg-primary/70 focus:outline-none focus:bg-primary/70 dark:bg-blue-600 dark:hover:bg-blue-700"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                  className="w-6 h-6"
                >
                  <path
                    strokeLinecap="round"
                    strokeLinejoin="round"
                    strokeWidth="2"
                    d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"
                  />
                </svg>
              </button>
            </form>
          </div>
        </div>
        <div className="w-full mt-4 lg:mt-0 lg:w-1/2">
          <Image
            src="https://www.creative-tim.com/twcomponents/svg/website-designer-bro-purple.svg"
            alt="Blog illustration"
            className="w-full h-full max-w-md mx-auto"
            width={500}
            height={500}
            layout="responsive"
          />
        </div>
      </section>

      <section className="bg-gray-100 dark:bg-gray-900 py-12 z-0">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-12">
            <h2 className="text-3xl font-extrabold text-gray-900 dark:text-gray-100">
              Pricing Plans
            </h2>
            <p className="mt-4 text-lg text-gray-600 dark:text-gray-300">
              Choose the plan that suits you best.
            </p>
          </div>
          <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
            {/* Basic Plan */}
            <div className="bg-white dark:bg-gray-800 p-6 rounded-lg shadow-md transition-transform transform hover:scale-105 ">
              <h3 className="text-xl font-semibold text-gray-800 dark:text-gray-200">
                Basic
              </h3>
              <p className="mt-4 text-gray-600 dark:text-gray-300 text-lg">
                $10/month
              </p>
              <ul className="mt-6 space-y-4">
                <li className="text-gray-600 dark:text-gray-300">Feature 1</li>
                <li className="text-gray-600 dark:text-gray-300">Feature 2</li>
                <li className="text-gray-600 dark:text-gray-300">Feature 3</li>
                <li className="text-gray-600 dark:text-gray-300">Feature 4</li>
                <li className="text-gray-600 dark:text-gray-300">Feature 5</li>
              </ul>
              <button className="mt-6 w-full bg-blue-600 text-white py-2 rounded-lg hover:bg-blue-700 transition-colors duration-300">
                Choose Plan
              </button>
            </div>

            {/* Standard Plan */}
            <div className="bg-white dark:bg-gray-800 p-6 rounded-lg shadow-md transition-transform transform hover:scale-105 relative border-2 border-blue-600">
              <span className="absolute top-2 right-2 bg-blue-600 text-white text-xs font-semibold rounded-full px-2 py-1">
                Bestseller
              </span>
              <h3 className="text-xl font-semibold text-gray-800 dark:text-gray-200">
                Standard
              </h3>
              <p className="mt-4 text-gray-600 dark:text-gray-300 text-lg">
                $20/month
              </p>
              <ul className="mt-6 space-y-4">
                <li className="text-gray-600 dark:text-gray-300">Feature 1</li>
                <li className="text-gray-600 dark:text-gray-300">Feature 2</li>
                <li className="text-gray-600 dark:text-gray-300">Feature 3</li>
                <li className="text-gray-600 dark:text-gray-300">Feature 4</li>
                <li className="text-gray-600 dark:text-gray-300">Feature 5</li>
              </ul>
              <button className="mt-6 w-full bg-blue-600 text-white py-2 rounded-lg hover:bg-blue-700 transition-colors duration-300">
                Choose Plan
              </button>
            </div>

            {/* Premium Plan */}
            <div className="bg-white dark:bg-gray-800 p-6 rounded-lg shadow-md transition-transform transform hover:scale-105">
              <h3 className="text-xl font-semibold text-gray-800 dark:text-gray-200">
                Premium
              </h3>
              <p className="mt-4 text-gray-600 dark:text-gray-300 text-lg">
                $30/month
              </p>
              <ul className="mt-6 space-y-4">
                <li className="text-gray-600 dark:text-gray-300">Feature 1</li>
                <li className="text-gray-600 dark:text-gray-300">Feature 2</li>
                <li className="text-gray-600 dark:text-gray-300">Feature 3</li>
                <li className="text-gray-600 dark:text-gray-300">Feature 4</li>
                <li className="text-gray-600 dark:text-gray-300">Feature 5</li>
              </ul>
              <button className="mt-6 w-full bg-blue-600 text-white py-2 rounded-lg hover:bg-blue-700 transition-colors duration-300">
                Choose Plan
              </button>
            </div>
          </div>
        </div>
      </section>
      <section className="py-12 bg-gray-100 dark:bg-gray-900">
  <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div className="text-center mb-12">
      <h2 className="text-3xl font-extrabold text-gray-900 dark:text-gray-100">
        Why Choose Us?
      </h2>
      <p className="mt-4 text-lg text-gray-600 dark:text-gray-300">
        Discover the unique advantages we offer.
      </p>
    </div>
    <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
      {/* Feature Card 1 */}
      <div className="bg-white dark:bg-gray-800 p-6 rounded-lg shadow-md transition-transform transform hover:scale-105">
        <h3 className="text-xl font-semibold text-gray-800 dark:text-gray-200">
          Quality Content
        </h3>
        <p className="mt-4 text-gray-600 dark:text-gray-300">
          We provide high-quality articles and resources that are well-researched and insightful.
        </p>
      </div>

      {/* Feature Card 2 */}
      <div className="bg-white dark:bg-gray-800 p-6 rounded-lg shadow-md transition-transform transform hover:scale-105">
        <h3 className="text-xl font-semibold text-gray-800 dark:text-gray-200">
          Community Driven
        </h3>
        <p className="mt-4 text-gray-600 dark:text-gray-300">
          Our platform is built by the community, for the community. Contribute and connect!
        </p>
      </div>

      {/* Feature Card 3 */}
      <div className="bg-white dark:bg-gray-800 p-6 rounded-lg shadow-md transition-transform transform hover:scale-105">
        <h3 className="text-xl font-semibold text-gray-800 dark:text-gray-200">
          Free Resources
        </h3>
        <p className="mt-4 text-gray-600 dark:text-gray-300">
          Access a variety of free templates, tools, and tutorials to enhance your projects.
        </p>
      </div>
    </div>
  </div>
</section>

      
    </main>
  );
}
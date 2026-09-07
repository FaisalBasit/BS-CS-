#include <iostream>
using namespace std;


struct node {
	int data;
	node* left;
	node* right;

};

node* root = NULL;

node* Get_newNode(int data) {
	node* newNode = new node();
	newNode->data = data;
	newNode->left = newNode->right = NULL;
	return newNode;
}



node* insert(node* root, int data) {
	if (root == NULL) {
		root = Get_newNode(data);
	}
	else if (data <= root->data) {
		root->left = insert(root->left, data);
	}
	else {
		root->right = insert(root->right, data);
	}
	return root;
}

bool search(node* root, int data) {
	if (root == NULL) {
		return false;
	}
	else if (root->data == data) {
		return true;
	}
	else if(data <= root->data) {
		return search(root->left, data);
	}
	else {
		return search(root->right, data);
	}
}

int main() {
	
	node* root = NULL;

	insert(root, 15);
	insert(root, 10);
	insert(root, 20);
	cout << search(root, 0);
}
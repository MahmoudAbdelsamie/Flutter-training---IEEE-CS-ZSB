void searchNode(Node *root, int data)
{
    if(root == NULL)
    {
        cout << "Tree is empty\n";
        return;
    }

    queue<Node*> q;
    q.push(root);

    while(!q.empty())
    {
        Node *temp = q.front();
        q.pop();

        if(temp->data == data)
        {
            cout << "Node found\n";
            return;
        }

        if(temp->left != NULL)
            q.push(temp->left);
        if(temp->right != NULL)
            q.push(temp->right);
    }

    cout << "Node not found\n";
}
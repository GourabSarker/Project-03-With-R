# Hierarchical Clustering

# Import Dataset

dataset = read.csv("Local_Business_Analysis.csv")
X = dataset[4:5]

# USing dendrogram to find the optimal number of clusters

dendrogram = hclust(dist(X, method = 'euclidean'), method = 'ward.D')
plot(dendrogram,
     main = paste('Dendrogram'),
     xlab = "Customers",
     ylab = "Euclidean Distances")

# Fitting hierarchical clustering to the dataset

hc = hclust(dist(X, method = 'euclidean'), method = 'ward.D')
y_hc = cutree(hc, 5)

# Visualizing the Clusters

library(cluster)
clusplot(X, 
         y_hc,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters of Clients'),
         xlab = "Annual Income",
         ylab = "Spending Score")













package org.csu.myjpetstore.service;

import org.csu.myjpetstore.domain.Category;
import org.csu.myjpetstore.domain.Item;
import org.csu.myjpetstore.domain.Product;
import org.csu.myjpetstore.persistence.impl.CateDAOImpl;
import org.csu.myjpetstore.persistence.impl.ItemDAOImpl;
import org.csu.myjpetstore.persistence.impl.ProductDAOImpl;

import java.util.List;

public class CatalogService {
    CateDAOImpl cateDAO;
    ProductDAOImpl productDAO;
    ItemDAOImpl itemDAO;
    public CatalogService() {
        cateDAO = new CateDAOImpl();
        productDAO = new ProductDAOImpl();
        itemDAO = new ItemDAOImpl();
    }

    public List<Category> getCategoryList() {
        return this.cateDAO.getCategoryList();
    }

    public Category getCategory(String categoryId) {
        return this.cateDAO.getCategory(categoryId);
    }

    public Product getProduct(String productId) {
        return this.productDAO.getProduct(productId);
    }

    public List<Product> getProductListByCategory(String categoryId) {
        return this.productDAO.getProductListByCategory(categoryId);
    }

    public List<Product> searchProductList(String keyword) {
        return this.productDAO.searchProductList("%" + keyword.toLowerCase() + "%");
    }

    public List<Item> getItemListByProduct(String productId) {
        return this.itemDAO.getItemListByProduct(productId);
    }

    public Item getItem(String itemId) {
        return this.itemDAO.getItem(itemId);
    }

    public boolean isItemInStock(String itemId) {
        return this.itemDAO.getInventoryQuantity(itemId) > 0;
    }
}

package org.csu.myjpetstore.persistence;

import org.csu.myjpetstore.domain.Category;

import java.util.List;

public interface CategoryDAO {
    List<Category> getCategoryList();

    Category getCategory(String CategoryId);

}

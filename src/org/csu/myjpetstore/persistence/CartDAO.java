package org.csu.myjpetstore.persistence;

public interface CartDAO {
    void insertCart(String username, byte[] cartString);

    void updateCart(String username, byte[] cartString);

    byte[] getCartString(String username);
}

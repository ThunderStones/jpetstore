package org.csu.myjpetstore.service;

import org.csu.myjpetstore.domain.Account;
import org.csu.myjpetstore.domain.Cart;
import org.csu.myjpetstore.persistence.SerializeUtil;
import org.csu.myjpetstore.persistence.impl.AccountDAOImpl;
import org.csu.myjpetstore.persistence.impl.CartDAOImpl;

import java.io.IOException;


public class AccountService {

    private AccountDAOImpl accountDAO;

    public AccountService() {
        accountDAO = new AccountDAOImpl();
    }

    public Account getAccount(String username) {
        return accountDAO.getAccountByUsername(username);
    }

    public Account getAccount(String username, String password) {
        Account account = new Account();
        account.setUsername(username);
        account.setPassword(password);
        return accountDAO.getAccountByUsernameAndPassword(account);
    }

    public void insertAccount(Account account) {
        this.accountDAO.insertAccount(account);
        this.accountDAO.insertProfile(account);
        this.accountDAO.insertSignon(account);
        try {
            new CartDAOImpl().insertCart(account.getUsername(), SerializeUtil.serialize(new Cart()));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    public void updateAccount(Account account) {
        this.accountDAO.updateAccount(account);
        this.accountDAO.updateProfile(account);
        if (account.getPassword() != null && account.getPassword().length() > 0) {
            this.accountDAO.updateSignon(account);
        }

    }

    public boolean accountIsExist(String username) {
        return accountDAO.getAccountByUsername(username) != null;
    }
}

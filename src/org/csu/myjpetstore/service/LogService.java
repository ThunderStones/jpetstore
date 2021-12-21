package org.csu.myjpetstore.service;

import org.csu.myjpetstore.domain.Log;
import org.csu.myjpetstore.persistence.LogDAO;
import org.csu.myjpetstore.persistence.impl.LogDAOImpl;

public class LogService {
    private final LogDAOImpl logDAO;

    public LogService() {
        this.logDAO = new LogDAOImpl();
    }
    public void addLog(Log log) {
        logDAO.insertLog(log);
    }
}

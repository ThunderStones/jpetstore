package org.csu.myjpetstore.persistence;

import org.csu.myjpetstore.domain.Sequence;

public interface SequenceDAO {
    Sequence getSequence(Sequence sequence);

    void updateSequence(Sequence sequence);
}

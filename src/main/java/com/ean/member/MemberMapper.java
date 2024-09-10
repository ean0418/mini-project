package com.ean.member;

import java.util.List;

public interface MemberMapper {
        public abstract int signupMember(bizone_member m);
        public abstract List<bizone_member> getMemberById(bizone_member m);
        public abstract int deleteMember(bizone_member m);
        public abstract int updateMember(bizone_member m);
    }


.class public interface abstract Lcom/alipay/mobile/nebulax/kernel/security/Accessor;
.super Ljava/lang/Object;
.source "Accessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulax/kernel/security/Accessor$InquiryCallback;
    }
.end annotation


# virtual methods
.method public abstract getGroup()Lcom/alipay/mobile/nebulax/kernel/security/Group;
.end method

.method public abstract inquiry(Ljava/util/List;Lcom/alipay/mobile/nebulax/kernel/security/Accessor$InquiryCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/security/Permission;",
            ">;",
            "Lcom/alipay/mobile/nebulax/kernel/security/Accessor$InquiryCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract usePermissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/security/Permission;",
            ">;"
        }
    .end annotation
.end method

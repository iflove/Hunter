.class public interface abstract Lcom/alipay/mobile/nebulax/kernel/security/Group;
.super Ljava/lang/Object;
.source "Group.java"


# virtual methods
.method public abstract assignPermissions(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/security/Permission;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract description()Ljava/lang/String;
.end method

.method public abstract groupName()Ljava/lang/String;
.end method

.method public abstract permissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/security/Permission;",
            ">;"
        }
    .end annotation
.end method

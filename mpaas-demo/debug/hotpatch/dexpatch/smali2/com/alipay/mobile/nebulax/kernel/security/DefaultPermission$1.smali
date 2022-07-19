.class final enum Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission$1;
.super Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;
.source "DefaultPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 12
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission$1;)V

    return-void
.end method

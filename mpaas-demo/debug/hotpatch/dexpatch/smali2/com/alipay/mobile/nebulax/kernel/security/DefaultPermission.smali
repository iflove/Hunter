.class public enum Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;
.super Ljava/lang/Enum;
.source "DefaultPermission.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/kernel/security/Permission;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;",
        ">;",
        "Lcom/alipay/mobile/nebulax/kernel/security/Permission;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;

.field public static final enum ALL:Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;


# instance fields
.field private authority:Ljava/lang/String;

.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission$1;

    const-string v1, "ALL"

    const/4 v2, 0x0

    const-string v3, "all"

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission$1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;->ALL:Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;

    .line 11
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;

    aput-object v0, v1, v2

    sput-object v1, Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;->$VALUES:[Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;->authority:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;->description:Ljava/lang/String;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;
    .locals 1

    .line 11
    const-class v0, Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;

    return-object p0
.end method

.method public static values()[Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;
    .locals 1

    .line 11
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;->$VALUES:[Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;

    return-object v0
.end method


# virtual methods
.method public authority()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public description()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/security/DefaultPermission;->description:Ljava/lang/String;

    return-object v0
.end method

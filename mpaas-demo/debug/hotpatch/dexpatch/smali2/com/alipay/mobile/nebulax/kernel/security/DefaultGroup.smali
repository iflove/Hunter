.class public final enum Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;
.super Ljava/lang/Enum;
.source "DefaultGroup.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/kernel/security/Group;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;",
        ">;",
        "Lcom/alipay/mobile/nebulax/kernel/security/Group;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;

.field public static final enum EXTERNAL:Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;

.field public static final enum INTERNAL:Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;

.field public static final enum PARTNER:Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;


# instance fields
.field private description:Ljava/lang/String;

.field private groupName:Ljava/lang/String;

.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/security/Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 15
    new-instance v0, Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;

    const-string v1, "INTERNAL"

    const/4 v2, 0x0

    const-string v3, "internal"

    const-string v4, "first party"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;->INTERNAL:Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;

    new-instance v1, Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;

    const-string v3, "PARTNER"

    const/4 v4, 0x1

    const-string v5, "partner"

    const-string v6, "second party"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;->PARTNER:Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;

    new-instance v3, Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;

    const-string v5, "EXTERNAL"

    const/4 v6, 0x2

    const-string v7, "external"

    const-string v8, "third party"

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;->EXTERNAL:Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;

    .line 14
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;->$VALUES:[Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;

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

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;->groupName:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;->description:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;
    .locals 1

    .line 14
    const-class v0, Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;

    return-object p0
.end method

.method public static values()[Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;
    .locals 1

    .line 14
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;->$VALUES:[Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;

    return-object v0
.end method


# virtual methods
.method public assignPermissions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/security/Permission;",
            ">;)V"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;->permissions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;->permissions:Ljava/util/List;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;->permissions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    return-void
.end method

.method public description()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;->description:Ljava/lang/String;

    return-object v0
.end method

.method public groupName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public permissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/security/Permission;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;->permissions:Ljava/util/List;

    return-object v0
.end method

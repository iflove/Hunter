.class public final enum Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;
.super Ljava/lang/Enum;
.source "UserBehaviorIdEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

.field public static final enum CLICKED:Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

.field public static final enum EVENT:Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

.field public static final enum NONE:Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

.field public static final enum OPENPAGE:Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;


# instance fields
.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 4
    new-instance v0, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string/jumbo v3, "none"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->NONE:Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    .line 5
    new-instance v1, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    const-string v3, "EVENT"

    const/4 v4, 0x1

    const-string v5, "event"

    invoke-direct {v1, v3, v4, v5}, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->EVENT:Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    .line 6
    new-instance v3, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    const-string v5, "CLICKED"

    const/4 v6, 0x2

    const-string v7, "clicked"

    invoke-direct {v3, v5, v6, v7}, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->CLICKED:Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    .line 7
    new-instance v5, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    const-string v7, "OPENPAGE"

    const/4 v8, 0x3

    const-string/jumbo v9, "openPage"

    invoke-direct {v5, v7, v8, v9}, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->OPENPAGE:Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    .line 3
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->$VALUES:[Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->desc:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static convert(Ljava/lang/String;)Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;
    .locals 5

    .line 20
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->values()[Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 22
    iget-object v4, v3, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->desc:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 23
    return-object v3

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :cond_1
    sget-object p0, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->NONE:Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;
    .locals 1

    .line 3
    const-class v0, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    return-object p0
.end method

.method public static values()[Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;
    .locals 1

    .line 3
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->$VALUES:[Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    invoke-virtual {v0}, [Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    return-object v0
.end method


# virtual methods
.method public getDes()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->desc:Ljava/lang/String;

    return-object v0
.end method

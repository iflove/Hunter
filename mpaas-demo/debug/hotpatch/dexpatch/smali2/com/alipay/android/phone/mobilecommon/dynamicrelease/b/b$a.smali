.class public final enum Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;
.super Ljava/lang/Enum;
.source "NetUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

.field public static final enum b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

.field public static final enum c:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

.field public static final enum d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

.field public static final enum e:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

.field private static final synthetic g:[Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;


# instance fields
.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 27
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v1, "LEVEL_2G"

    const/4 v2, 0x0

    const-string v3, "2g"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    .line 28
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v3, "LEVEL_3G"

    const/4 v4, 0x1

    const-string v5, "3g"

    invoke-direct {v1, v3, v4, v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    .line 29
    new-instance v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v5, "LEVEL_4G"

    const/4 v6, 0x2

    const-string v7, "4g"

    invoke-direct {v3, v5, v6, v7}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->c:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    .line 30
    new-instance v5, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v7, "LEVEL_5G"

    const/4 v8, 0x3

    const-string v9, "5g"

    invoke-direct {v5, v7, v8, v9}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    .line 31
    new-instance v7, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v9, "LEVEL_WIFI"

    const/4 v10, 0x4

    const-string/jumbo v11, "wifi"

    invoke-direct {v7, v9, v10, v11}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->e:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    .line 26
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->g:[Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->f:Ljava/lang/String;

    .line 37
    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;
    .locals 2
    .param p0, "level"    # Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    return-object v0

    .line 46
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    return-object v0

    .line 48
    :cond_1
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->c:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    return-object v0

    .line 50
    :cond_2
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    return-object v0

    .line 52
    :cond_3
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->e:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 53
    return-object v0

    .line 55
    :cond_4
    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->a()Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;
    .locals 1

    .line 26
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->g:[Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    invoke-virtual {v0}, [Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->f:Ljava/lang/String;

    return-object v0
.end method

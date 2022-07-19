.class public Lcom/alipay/mobile/nebulax/common/utils/NXLogger;
.super Ljava/lang/Object;
.source "NXLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulax/common/utils/NXLogger$Proxy;
    }
.end annotation


# static fields
.field private static final EMPTY_TEXT:Ljava/lang/String; = ""

.field private static final LOG_PREFIX:Ljava/lang/String; = "NebulaX_"

.field private static final LOG_PREFIX_LENGTH:I

.field private static final MAX_LOG_TAG_LENGTH:I = 0x19

.field private static final TAG:Ljava/lang/String; = "NXLogger"

.field private static sDefaultImpl:Lcom/alipay/mobile/nebulax/common/utils/NXLogger$Proxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-string v0, "NebulaX_"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->LOG_PREFIX_LENGTH:I

    .line 31
    new-instance v0, Lcom/alipay/mobile/nebulax/common/utils/NXLogger$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->sDefaultImpl:Lcom/alipay/mobile/nebulax/common/utils/NXLogger$Proxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 59
    const-string v0, "NXLogger"

    invoke-static {v0, p0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 63
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    return-void

    .line 67
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->get()Lcom/alipay/mobile/nebulax/common/utils/NXLogger$Proxy;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger$Proxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 103
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    return-void

    .line 106
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->get()Lcom/alipay/mobile/nebulax/common/utils/NXLogger$Proxy;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger$Proxy;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .line 87
    const-string v0, "NXLogger"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 91
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 99
    invoke-static {}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->get()Lcom/alipay/mobile/nebulax/common/utils/NXLogger$Proxy;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger$Proxy;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 95
    const-string v0, "NXLogger"

    invoke-static {v0, p0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    return-void
.end method

.method private static get()Lcom/alipay/mobile/nebulax/common/utils/NXLogger$Proxy;
    .locals 1

    .line 54
    const-class v0, Lcom/alipay/mobile/nebulax/common/utils/NXLogger$Proxy;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/common/utils/NXLogger$Proxy;

    .line 55
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->sDefaultImpl:Lcom/alipay/mobile/nebulax/common/utils/NXLogger$Proxy;

    :goto_0
    return-object v0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1

    .line 122
    if-eqz p0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static makeLogTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->makeLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeLogTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->LOG_PREFIX_LENGTH:I

    rsub-int/lit8 v2, v1, 0x19

    const-string v3, "NebulaX_"

    if-le v0, v2, :cond_0

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    rsub-int/lit8 v1, v1, 0x19

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    .line 71
    const-string v0, "NXLogger"

    invoke-static {v0, p0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 75
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    return-void

    .line 79
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->get()Lcom/alipay/mobile/nebulax/common/utils/NXLogger$Proxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger$Proxy;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 83
    invoke-static {}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->get()Lcom/alipay/mobile/nebulax/common/utils/NXLogger$Proxy;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger$Proxy;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    return-void
.end method

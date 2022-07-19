.class public Lcom/alipay/mobile/common/cache/disk/CacheException;
.super Ljava/lang/Exception;
.source "CacheException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;
    .param p2, "msg"    # Ljava/lang/String;

    .line 61
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/cache/disk/CacheException;->a(Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/common/cache/disk/CacheException;->a:Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;

    .line 63
    iput-object p2, p0, Lcom/alipay/mobile/common/cache/disk/CacheException;->b:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;->WRITE_IO_ERROR:Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;

    iput-object v0, p0, Lcom/alipay/mobile/common/cache/disk/CacheException;->a:Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;

    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/common/cache/disk/CacheException;->b:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "code"    # Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;
    .param p1, "message"    # Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 86
    .local v1, "str":Ljava/lang/StringBuilder;
    move-object v1, v0

    const-string v2, "Cache error"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    if-eqz p0, :cond_0

    .line 88
    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;->getValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_0
    const-string v0, " : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCode()Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/CacheException;->a:Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/CacheException;->b:Ljava/lang/String;

    return-object v0
.end method

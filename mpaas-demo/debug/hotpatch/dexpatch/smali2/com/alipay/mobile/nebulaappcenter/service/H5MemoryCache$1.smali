.class Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache$1;
.super Ljava/lang/Object;
.source "H5MemoryCache.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache$1;->a:Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache$1;->a:Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;

    const-string/jumbo v1, "no"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->a(Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;Z)Z

    .line 49
    return-void
.end method

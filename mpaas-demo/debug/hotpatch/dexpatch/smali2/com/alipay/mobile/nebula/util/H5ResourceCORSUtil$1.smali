.class final Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil$1;
.super Ljava/lang/Object;
.source "H5ResourceCORSUtil.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->initConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange(Ljava/lang/String;)V
    .locals 0
    .param p1, "newValue"    # Ljava/lang/String;

    .line 35
    # invokes: Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->applyConfig(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->access$000(Ljava/lang/String;)V

    .line 36
    return-void
.end method

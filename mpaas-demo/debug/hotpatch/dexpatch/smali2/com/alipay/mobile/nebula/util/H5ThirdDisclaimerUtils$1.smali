.class final Lcom/alipay/mobile/nebula/util/H5ThirdDisclaimerUtils$1;
.super Ljava/lang/Object;
.source "H5ThirdDisclaimerUtils.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/util/H5ThirdDisclaimerUtils;->initConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange(Ljava/lang/String;)V
    .locals 0
    .param p1, "newValue"    # Ljava/lang/String;

    .line 31
    # invokes: Lcom/alipay/mobile/nebula/util/H5ThirdDisclaimerUtils;->applyConfig(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5ThirdDisclaimerUtils;->access$000(Ljava/lang/String;)V

    .line 32
    return-void
.end method

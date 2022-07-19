.class synthetic Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyShareAlipayContactPlugin$5;
.super Ljava/lang/Object;
.source "TinyShareAlipayContactPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyShareAlipayContactPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 159
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->values()[Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyShareAlipayContactPlugin$5;->a:[I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->DEVELOP:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

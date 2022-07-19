.class public Landroid/phone/wallet/nebulaappproxy/NebulaBundle2AARMetaInfoConfigZZZ;
.super Ljava/lang/Object;
.source "NebulaBundle2AARMetaInfoConfigZZZ.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nebulaMetaInfo()Ljava/lang/String;
    .locals 1

    .line 3
    const-string/jumbo v0, "{\'nebula-metainfo\':{\'plugininfo\':[{\'lazyInit\':\'true\',\'scope\':\'service\',\'bundleName\':\'android-phone-wallet-nebulaappproxy\',\'className\':\'com.alipay.mobile.nebulaappproxy.tracedebug.plugin.H5TraceDebugPlugin\',\'events\':\'initialTraceDebug|postMethodTrace|tinyDebugConsole|h5PageFinished|h5PageStarted\'}]}}"

    return-object v0
.end method

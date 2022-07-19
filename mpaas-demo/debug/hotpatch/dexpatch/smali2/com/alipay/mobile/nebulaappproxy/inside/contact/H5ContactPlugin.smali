.class public Lcom/alipay/mobile/nebulaappproxy/inside/contact/H5ContactPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5ContactPlugin.java"


# static fields
.field public static final CONTACT:Ljava/lang/String; = "contact"

.field private static final TAG:Ljava/lang/String; = "H5ContactPlugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method private selectContact(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 2
    .param p1, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 42
    const-string v0, "H5ContactPlugin"

    const-string/jumbo v1, "selectContact"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/inside/contact/H5ContactPlugin$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulaappproxy/inside/contact/H5ContactPlugin$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/inside/contact/H5ContactPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactUtils;->pickFromContactsList(Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactPickerCallback;)V

    .line 66
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 25
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "action":Ljava/lang/String;
    const-string v1, "contact"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulaappproxy/inside/contact/H5ContactPlugin;->selectContact(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 29
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 35
    const-string v0, "contact"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 36
    return-void
.end method

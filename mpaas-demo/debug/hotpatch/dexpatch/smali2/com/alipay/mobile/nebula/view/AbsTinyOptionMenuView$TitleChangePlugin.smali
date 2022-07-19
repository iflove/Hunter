.class Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView$TitleChangePlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "AbsTinyOptionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TitleChangePlugin"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView$TitleChangePlugin;->this$0:Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView;

    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView;Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView;
    .param p2, "x1"    # Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView$1;

    .line 22
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView$TitleChangePlugin;-><init>(Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView;)V

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView$TitleChangePlugin;->this$0:Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView;

    iget-object v1, v0, Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView;->onTitleChange(Lcom/alipay/mobile/nebula/view/H5TitleView;)V

    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 25
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V

    .line 26
    const-string/jumbo v0, "mpTitleChange"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 27
    return-void
.end method

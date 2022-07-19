.class Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;
.super Ljava/lang/Object;
.source "RecentUseTinyAppPopWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentUseTinyAppModel"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;

.field public appId:Ljava/lang/String;

.field public display:Z

.field public extra:Ljava/lang/String;

.field public fillingMark:Z

.field public iconUrl:Ljava/lang/String;

.field public inMarketStage:Z

.field public itemId:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public nbsn:Ljava/lang/String;

.field public nbsv:Ljava/lang/String;

.field public scheme:Ljava/lang/String;

.field public slogan:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;->a:Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;

    .line 375
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;-><init>(Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;)V

    return-void
.end method

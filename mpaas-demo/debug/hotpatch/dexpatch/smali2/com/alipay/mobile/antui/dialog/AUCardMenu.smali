.class public Lcom/alipay/mobile/antui/dialog/AUCardMenu;
.super Lcom/alipay/mobile/antui/dialog/AUAbsMenu;
.source "AUCardMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/dialog/AUCardMenu$OnMessageItemClickListener;,
        Lcom/alipay/mobile/antui/dialog/AUCardMenu$b;,
        Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;,
        Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;,
        Lcom/alipay/mobile/antui/dialog/AUCardMenu$a;,
        Lcom/alipay/mobile/antui/dialog/AUCardMenu$c;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/alipay/mobile/antui/dialog/AUCardMenu$OnMessageItemClickListener;

.field private mOnLoadImageListener:Lcom/alipay/mobile/antui/api/OnLoadImageListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/alipay/mobile/antui/dialog/AUCardMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/antui/dialog/AUCardMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/alipay/mobile/antui/dialog/AUCardMenu;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/antui/dialog/AUCardMenu;)Lcom/alipay/mobile/antui/dialog/AUCardMenu$OnMessageItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUCardMenu;

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu;->mListener:Lcom/alipay/mobile/antui/dialog/AUCardMenu$OnMessageItemClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/antui/dialog/AUCardMenu;)Lcom/alipay/mobile/antui/api/OnLoadImageListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUCardMenu;

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu;->mOnLoadImageListener:Lcom/alipay/mobile/antui/api/OnLoadImageListener;

    return-object v0
.end method


# virtual methods
.method public initAdapter(Landroid/content/Context;)Landroid/widget/BaseAdapter;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/antui/dialog/AUCardMenu$c;-><init>(Lcom/alipay/mobile/antui/dialog/AUCardMenu;B)V

    return-object v0
.end method

.method public setOnClickListener(Lcom/alipay/mobile/antui/dialog/AUCardMenu$OnMessageItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alipay/mobile/antui/dialog/AUCardMenu$OnMessageItemClickListener;

    .line 296
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu;->mListener:Lcom/alipay/mobile/antui/dialog/AUCardMenu$OnMessageItemClickListener;

    .line 297
    new-instance v0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/dialog/AUCardMenu$1;-><init>(Lcom/alipay/mobile/antui/dialog/AUCardMenu;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 308
    return-void
.end method

.method public setOnLoadImageListener(Lcom/alipay/mobile/antui/api/OnLoadImageListener;)V
    .locals 0
    .param p1, "onLoadImageListener"    # Lcom/alipay/mobile/antui/api/OnLoadImageListener;

    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu;->mOnLoadImageListener:Lcom/alipay/mobile/antui/api/OnLoadImageListener;

    .line 52
    return-void
.end method

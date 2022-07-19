.class final Lcom/alipay/mobile/antui/dialog/AUCardMenu$c;
.super Landroid/widget/BaseAdapter;
.source "AUCardMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/dialog/AUCardMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUCardMenu;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/antui/dialog/AUCardMenu;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$c;->a:Lcom/alipay/mobile/antui/dialog/AUCardMenu;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/antui/dialog/AUCardMenu;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/antui/dialog/AUCardMenu;

    .line 57
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/dialog/AUCardMenu$c;-><init>(Lcom/alipay/mobile/antui/dialog/AUCardMenu;)V

    return-void
.end method

.method private a(I)Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;
    .locals 1
    .param p1, "position"    # I

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$c;->a:Lcom/alipay/mobile/antui/dialog/AUCardMenu;

    iget-object v0, v0, Lcom/alipay/mobile/antui/dialog/AUCardMenu;->mPopItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$c;->a:Lcom/alipay/mobile/antui/dialog/AUCardMenu;

    iget-object v0, v0, Lcom/alipay/mobile/antui/dialog/AUCardMenu;->mPopItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/dialog/AUCardMenu$c;->a(I)Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 74
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 79
    if-nez p2, :cond_0

    .line 80
    new-instance v0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$c;->a:Lcom/alipay/mobile/antui/dialog/AUCardMenu;

    iget-object v2, v1, Lcom/alipay/mobile/antui/dialog/AUCardMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;-><init>(Lcom/alipay/mobile/antui/dialog/AUCardMenu;Landroid/content/Context;)V

    move-object p2, v0

    .line 83
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$c;->a:Lcom/alipay/mobile/antui/dialog/AUCardMenu;

    iget-object v1, v1, Lcom/alipay/mobile/antui/dialog/AUCardMenu;->mPopItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->a(Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;)V

    .line 85
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;

    new-instance v1, Lcom/alipay/mobile/antui/dialog/AUCardMenu$c$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/antui/dialog/AUCardMenu$c$1;-><init>(Lcom/alipay/mobile/antui/dialog/AUCardMenu$c;I)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->a(Lcom/alipay/mobile/antui/dialog/AUCardMenu$a;)V

    .line 97
    return-object p2
.end method

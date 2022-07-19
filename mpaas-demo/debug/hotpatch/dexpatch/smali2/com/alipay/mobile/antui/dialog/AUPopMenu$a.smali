.class final Lcom/alipay/mobile/antui/dialog/AUPopMenu$a;
.super Landroid/widget/BaseAdapter;
.source "AUPopMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/dialog/AUPopMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUPopMenu;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/antui/dialog/AUPopMenu;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "popItems"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;)V"
        }
    .end annotation

    .line 252
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu$a;->a:Lcom/alipay/mobile/antui/dialog/AUPopMenu;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 250
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu$a;->b:Ljava/util/ArrayList;

    .line 253
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 254
    iget-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 255
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUPopMenu$a;->notifyDataSetChanged()V

    .line 256
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/antui/dialog/AUPopMenu;Ljava/util/ArrayList;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/antui/dialog/AUPopMenu;
    .param p2, "x1"    # Ljava/util/ArrayList;

    .line 249
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/dialog/AUPopMenu$a;-><init>(Lcom/alipay/mobile/antui/dialog/AUPopMenu;Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(I)Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;
    .locals 1
    .param p1, "position"    # I

    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 249
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/dialog/AUPopMenu$a;->a(I)Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 270
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 275
    if-nez p2, :cond_0

    .line 276
    new-instance v0, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu$a;->a:Lcom/alipay/mobile/antui/dialog/AUPopMenu;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->access$100(Lcom/alipay/mobile/antui/dialog/AUPopMenu;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;-><init>(Lcom/alipay/mobile/antui/dialog/AUPopMenu;Landroid/content/Context;)V

    move-object p2, v0

    .line 278
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->a(Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;)V

    .line 279
    return-object p2
.end method

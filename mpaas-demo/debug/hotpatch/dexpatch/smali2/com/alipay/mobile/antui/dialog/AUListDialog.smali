.class public Lcom/alipay/mobile/antui/dialog/AUListDialog;
.super Lcom/alipay/mobile/antui/basic/AUDialog;
.source "AUListDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/dialog/AUListDialog$b;,
        Lcom/alipay/mobile/antui/dialog/AUListDialog$a;,
        Lcom/alipay/mobile/antui/dialog/AUListDialog$OnItemClickListener;
    }
.end annotation


# instance fields
.field private adapterListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private buttonsContainer:Landroid/view/View;

.field private buttonsDivider:Landroid/view/View;

.field private headDivider:Landroid/view/View;

.field private final inflater:Landroid/view/LayoutInflater;

.field private listAdapter:Lcom/alipay/mobile/antui/dialog/AUListDialog$a;

.field private listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

.field private listViewFadeScrollbars:Ljava/lang/Boolean;

.field private listener:Lcom/alipay/mobile/antui/dialog/AUListDialog$OnItemClickListener;

.field private mCancelBtn:Landroid/widget/Button;

.field private final mContext:Landroid/content/Context;

.field private mEnsureBtn:Landroid/widget/Button;

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNegativeListener:Landroid/view/View$OnClickListener;

.field private mNegativeString:Ljava/lang/String;

.field private mPositiveListener:Landroid/view/View$OnClickListener;

.field private mPositiveString:Ljava/lang/String;

.field private maxItems:F

.field private message:Ljava/lang/String;

.field private messageContent:Landroid/widget/ScrollView;

.field private messageView:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private singleItemHeight:F

.field private title:Ljava/lang/String;

.field private titleContainer:Landroid/view/View;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;)V"
        }
    .end annotation

    .line 107
    const-string v5, ""

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/antui/dialog/AUListDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "list"    # Ljava/util/List;
    .param p5, "positiveString"    # Ljava/lang/String;
    .param p6, "positiveListener"    # Landroid/view/View$OnClickListener;
    .param p7, "negativeString"    # Ljava/lang/String;
    .param p8, "negativeListener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/view/View$OnClickListener;",
            "Ljava/lang/String;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 125
    sget v0, Lcom/alipay/mobile/antui/R$style;->noTitleTransBgDialogStyle:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUDialog;-><init>(Landroid/content/Context;I)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->listViewFadeScrollbars:Ljava/lang/Boolean;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mItemList:Ljava/util/List;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->title:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->message:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->title:Ljava/lang/String;

    .line 127
    iput-object p3, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->message:Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mContext:Landroid/content/Context;

    .line 129
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->inflater:Landroid/view/LayoutInflater;

    .line 130
    iput-object p5, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mPositiveString:Ljava/lang/String;

    .line 131
    iput-object p6, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mPositiveListener:Landroid/view/View$OnClickListener;

    .line 132
    iput-object p7, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mNegativeString:Ljava/lang/String;

    .line 133
    iput-object p8, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mNegativeListener:Landroid/view/View$OnClickListener;

    .line 134
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mItemList:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "list"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 79
    sget v0, Lcom/alipay/mobile/antui/R$style;->noTitleTransBgDialogStyle:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUDialog;-><init>(Landroid/content/Context;I)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->listViewFadeScrollbars:Ljava/lang/Boolean;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mItemList:Ljava/util/List;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->title:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->message:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->inflater:Landroid/view/LayoutInflater;

    .line 82
    if-eqz p2, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 84
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    .local v1, "itemName":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mItemList:Ljava/util/List;

    new-instance v3, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;

    invoke-direct {v3, v1}, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v1    # "itemName":Ljava/lang/String;
    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;)V"
        }
    .end annotation

    .line 96
    const-string v0, ""

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/alipay/mobile/antui/dialog/AUListDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 10
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "list"    # Ljava/util/ArrayList;
    .param p4, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/dialog/PopMenuItem;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 154
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/alipay/mobile/antui/dialog/AUListDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/content/Context;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/content/Context;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "list"    # Ljava/util/ArrayList;
    .param p4, "showSelectionState"    # Z
    .param p5, "positiveString"    # Ljava/lang/String;
    .param p6, "positiveListener"    # Landroid/view/View$OnClickListener;
    .param p7, "negativeString"    # Ljava/lang/String;
    .param p8, "negativeListener"    # Landroid/view/View$OnClickListener;
    .param p9, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/dialog/PopMenuItem;",
            ">;Z",
            "Ljava/lang/String;",
            "Landroid/view/View$OnClickListener;",
            "Ljava/lang/String;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    sget v0, Lcom/alipay/mobile/antui/R$style;->noTitleTransBgDialogStyle:I

    invoke-direct {p0, p9, v0}, Lcom/alipay/mobile/antui/basic/AUDialog;-><init>(Landroid/content/Context;I)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->listViewFadeScrollbars:Ljava/lang/Boolean;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mItemList:Ljava/util/List;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->title:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->message:Ljava/lang/String;

    .line 170
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->title:Ljava/lang/String;

    .line 171
    iput-object p2, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->message:Ljava/lang/String;

    .line 172
    iput-object p9, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mContext:Landroid/content/Context;

    .line 173
    invoke-static {p9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->inflater:Landroid/view/LayoutInflater;

    .line 174
    iput-object p5, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mPositiveString:Ljava/lang/String;

    .line 175
    iput-object p6, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mPositiveListener:Landroid/view/View$OnClickListener;

    .line 176
    iput-object p7, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mNegativeString:Ljava/lang/String;

    .line 177
    iput-object p8, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mNegativeListener:Landroid/view/View$OnClickListener;

    .line 178
    invoke-direct {p0, p3}, Lcom/alipay/mobile/antui/dialog/AUListDialog;->getMessageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mItemList:Ljava/util/List;

    .line 179
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "list"    # Ljava/util/ArrayList;
    .param p3, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/dialog/PopMenuItem;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/alipay/mobile/antui/dialog/AUListDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/content/Context;)V
    .locals 10
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "list"    # Ljava/util/ArrayList;
    .param p3, "showSelectionState"    # Z
    .param p4, "positiveString"    # Ljava/lang/String;
    .param p5, "positiveListener"    # Landroid/view/View$OnClickListener;
    .param p6, "negativeString"    # Ljava/lang/String;
    .param p7, "negativeListener"    # Landroid/view/View$OnClickListener;
    .param p8, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/dialog/PopMenuItem;",
            ">;Z",
            "Ljava/lang/String;",
            "Landroid/view/View$OnClickListener;",
            "Ljava/lang/String;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 161
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/alipay/mobile/antui/dialog/AUListDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/content/Context;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 1
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/dialog/PopMenuItem;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/antui/dialog/AUListDialog;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 144
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/dialog/AUListDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUListDialog;

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mNegativeListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/antui/dialog/AUListDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUListDialog;

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mCancelBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/antui/dialog/AUListDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUListDialog;

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mPositiveListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/antui/dialog/AUListDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUListDialog;

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mEnsureBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/antui/dialog/AUListDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUListDialog;

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mItemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/antui/dialog/AUListDialog;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUListDialog;

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->inflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private getMessageList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .param p1, "popMenuItemList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/dialog/PopMenuItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;"
        }
    .end annotation

    .line 183
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v0, "messagePopItemList":Ljava/util/List;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/antui/dialog/PopMenuItem;

    .line 186
    .local v2, "popMenuItem":Lcom/alipay/mobile/antui/dialog/PopMenuItem;
    move-object v2, v4

    if-eqz v4, :cond_0

    .line 189
    new-instance v4, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;

    invoke-direct {v4}, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;-><init>()V

    .line 190
    .local v3, "messagePopItem":Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;
    move-object v3, v4

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->title:Ljava/lang/String;

    .line 191
    invoke-virtual {v2}, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->getResId()I

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    new-instance v4, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->getResId()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;-><init>(I)V

    iput-object v4, v3, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->icon:Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

    goto :goto_1

    .line 194
    :cond_1
    new-instance v4, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v4, v3, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->icon:Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

    .line 196
    :goto_1
    invoke-virtual {v2}, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->getExternParam()Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->externParam:Ljava/util/HashMap;

    .line 197
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v2    # "popMenuItem":Lcom/alipay/mobile/antui/dialog/PopMenuItem;
    .end local v3    # "messagePopItem":Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;
    goto :goto_0

    .line 200
    :cond_2
    return-object v0

    .line 202
    .end local v0    # "messagePopItemList":Ljava/util/List;
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private init()V
    .locals 5

    .line 261
    new-instance v0, Lcom/alipay/mobile/antui/dialog/AUListDialog$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/antui/dialog/AUListDialog$a;-><init>(Lcom/alipay/mobile/antui/dialog/AUListDialog;B)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->listAdapter:Lcom/alipay/mobile/antui/dialog/AUListDialog$a;

    .line 262
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mNegativeString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mPositiveString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->buttonsContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->buttonsContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->buttonsDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->updateFootState(Z)V

    .line 273
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mNegativeString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mCancelBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mNegativeString:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mCancelBtn:Landroid/widget/Button;

    new-instance v4, Lcom/alipay/mobile/antui/dialog/AUListDialog$1;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/antui/dialog/AUListDialog$1;-><init>(Lcom/alipay/mobile/antui/dialog/AUListDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 288
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mPositiveString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mEnsureBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mPositiveString:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mEnsureBtn:Landroid/widget/Button;

    new-instance v4, Lcom/alipay/mobile/antui/dialog/AUListDialog$2;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/antui/dialog/AUListDialog$2;-><init>(Lcom/alipay/mobile/antui/dialog/AUListDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mEnsureBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 304
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->titleContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 307
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->titleContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->headDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->updateHeadState(Z)V

    .line 312
    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 313
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->titleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 316
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->messageContent:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 318
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 320
    :goto_4
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->messageView:Lcom/alipay/mobile/antui/basic/AUTextView;

    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->messageView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    return-void

    .line 324
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->messageView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 326
    return-void
.end method


# virtual methods
.method public getMaxItems()F
    .locals 2

    .line 381
    iget v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->maxItems:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 382
    return v0

    .line 384
    :cond_0
    const/high16 v0, 0x40a00000    # 5.0f

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 223
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUDialog;->onCreate(Landroid/os/Bundle;)V

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_list_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 225
    .local v0, "rootView":Landroid/view/View;
    sget v1, Lcom/alipay/mobile/antui/R$id;->dialog_listView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    .line 227
    iget v2, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->singleItemHeight:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    .line 228
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setSingleItemHeight(F)V

    .line 230
    :cond_0
    iget v1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->maxItems:F

    cmpl-float v2, v1, v3

    if-lez v2, :cond_1

    .line 231
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setMaxItems(F)V

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->listViewFadeScrollbars:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 235
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setScrollbarFadingEnabled(Z)V

    .line 238
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_DIALOG_DIVIDER_COLOR:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 239
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->AU_DIVIDER_SPACE1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setDividerHeight(I)V

    .line 240
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setHeaderDividersEnabled(Z)V

    .line 241
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setFooterDividersEnabled(Z)V

    .line 242
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    sget v3, Lcom/alipay/mobile/antui/R$drawable;->au_dialog_bg:I

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setBackgroundResource(I)V

    .line 244
    sget v1, Lcom/alipay/mobile/antui/R$id;->title_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->titleContainer:Landroid/view/View;

    .line 245
    sget v3, Lcom/alipay/mobile/antui/R$id;->title:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->titleView:Landroid/widget/TextView;

    .line 246
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->titleContainer:Landroid/view/View;

    sget v3, Lcom/alipay/mobile/antui/R$id;->message_content:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->messageContent:Landroid/widget/ScrollView;

    .line 247
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->titleContainer:Landroid/view/View;

    sget v3, Lcom/alipay/mobile/antui/R$id;->message:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->messageView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 248
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setMinLines(I)V

    .line 249
    sget v1, Lcom/alipay/mobile/antui/R$id;->head_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->headDivider:Landroid/view/View;

    .line 251
    sget v1, Lcom/alipay/mobile/antui/R$id;->bottom_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->buttonsContainer:Landroid/view/View;

    .line 252
    sget v2, Lcom/alipay/mobile/antui/R$id;->ensure:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mEnsureBtn:Landroid/widget/Button;

    .line 253
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->buttonsContainer:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/antui/R$id;->cancel:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mCancelBtn:Landroid/widget/Button;

    .line 254
    sget v1, Lcom/alipay/mobile/antui/R$id;->bottom_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->buttonsDivider:Landroid/view/View;

    .line 256
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUListDialog;->setContentView(Landroid/view/View;)V

    .line 257
    invoke-direct {p0}, Lcom/alipay/mobile/antui/dialog/AUListDialog;->init()V

    .line 258
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->listener:Lcom/alipay/mobile/antui/dialog/AUListDialog$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 460
    invoke-interface {v0, p3}, Lcom/alipay/mobile/antui/dialog/AUListDialog$OnItemClickListener;->onItemClick(I)V

    .line 462
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->adapterListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_1

    .line 463
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 465
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUListDialog;->dismiss()V

    .line 466
    return-void
.end method

.method public setListViewScrollbarFadingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 394
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->listViewFadeScrollbars:Ljava/lang/Boolean;

    .line 395
    return-void
.end method

.method public setMaxItems(F)V
    .locals 0
    .param p1, "maxItems"    # F

    .line 372
    iput p1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->maxItems:F

    .line 373
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 217
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->adapterListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 218
    return-void
.end method

.method public setOnItemClickListener(Lcom/alipay/mobile/antui/dialog/AUListDialog$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/antui/dialog/AUListDialog$OnItemClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 210
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->listener:Lcom/alipay/mobile/antui/dialog/AUListDialog$OnItemClickListener;

    .line 211
    return-void
.end method

.method public setSingleItemHeight(F)V
    .locals 0
    .param p1, "singleItemHeight"    # F

    .line 403
    iput p1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->singleItemHeight:F

    .line 404
    return-void
.end method

.method public show()V
    .locals 3

    .line 333
    invoke-super {p0}, Lcom/alipay/mobile/antui/basic/AUDialog;->show()V

    .line 334
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/antui/utils/ToolUtils;->getScreenWidth_Height(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE10:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 335
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUListDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUListDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 338
    :cond_0
    return-void
.end method

.method public updateData(Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "list"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/dialog/PopMenuItem;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->listAdapter:Lcom/alipay/mobile/antui/dialog/AUListDialog$a;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 349
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mItemList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/dialog/AUListDialog;->getMessageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->listAdapter:Lcom/alipay/mobile/antui/dialog/AUListDialog$a;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUListDialog$a;->notifyDataSetChanged()V

    .line 352
    :cond_0
    return-void
.end method

.method public updateListData(Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "messagePopItems"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;)V"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->listAdapter:Lcom/alipay/mobile/antui/dialog/AUListDialog$a;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 362
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog;->listAdapter:Lcom/alipay/mobile/antui/dialog/AUListDialog$a;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUListDialog$a;->notifyDataSetChanged()V

    .line 364
    :cond_0
    return-void
.end method

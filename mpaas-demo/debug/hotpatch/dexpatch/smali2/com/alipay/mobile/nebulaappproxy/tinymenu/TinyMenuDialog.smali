.class public Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;
.super Lcom/alipay/mobile/antui/basic/AUDialog;
.source "TinyMenuDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListDialogItem;,
        Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListAdapter;,
        Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TinyMenuDialog"


# instance fields
.field private adapterListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private buttonsContainer:Landroid/view/View;

.field private buttonsDivider:Landroid/view/View;

.field private headDivider:Landroid/view/View;

.field private final inflater:Landroid/view/LayoutInflater;

.field private isItemClick:Z

.field private listAdapter:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListAdapter;

.field private listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

.field private listViewFadeScrollbars:Ljava/lang/Boolean;

.field private listener:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$OnItemClickListener;

.field private mBridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field private mCancelBtn:Landroid/widget/Button;

.field private final mContext:Landroid/content/Context;

.field private mEnsureBtn:Landroid/widget/Button;

.field private mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

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

.field private mTipsContent:Landroid/view/ViewGroup;

.field private mTipsText:Landroid/widget/TextView;

.field private maxItems:F

.field private message:Ljava/lang/String;

.field private messageContent:Landroid/widget/ScrollView;

.field private messageView:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private oldWidth:I

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

    .line 134
    const-string v5, ""

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
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

    .line 152
    sget v0, Lcom/alipay/mobile/antui/R$style;->noTitleTransBgDialogStyle:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUDialog;-><init>(Landroid/content/Context;I)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->listViewFadeScrollbars:Ljava/lang/Boolean;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->isItemClick:Z

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mItemList:Ljava/util/List;

    .line 92
    const-string v1, ""

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->title:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->message:Ljava/lang/String;

    .line 412
    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->oldWidth:I

    .line 153
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->title:Ljava/lang/String;

    .line 154
    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->message:Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mContext:Landroid/content/Context;

    .line 156
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->inflater:Landroid/view/LayoutInflater;

    .line 157
    iput-object p5, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mPositiveString:Ljava/lang/String;

    .line 158
    iput-object p6, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mPositiveListener:Landroid/view/View$OnClickListener;

    .line 159
    iput-object p7, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mNegativeString:Ljava/lang/String;

    .line 160
    iput-object p8, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mNegativeListener:Landroid/view/View$OnClickListener;

    .line 161
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mItemList:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
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

    .line 106
    sget v0, Lcom/alipay/mobile/antui/R$style;->noTitleTransBgDialogStyle:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUDialog;-><init>(Landroid/content/Context;I)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->listViewFadeScrollbars:Ljava/lang/Boolean;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->isItemClick:Z

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mItemList:Ljava/util/List;

    .line 92
    const-string v1, ""

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->title:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->message:Ljava/lang/String;

    .line 412
    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->oldWidth:I

    .line 107
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mContext:Landroid/content/Context;

    .line 108
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->inflater:Landroid/view/LayoutInflater;

    .line 109
    if-eqz p2, :cond_0

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    .local v1, "itemName":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mItemList:Ljava/util/List;

    new-instance v3, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;

    invoke-direct {v3, v1}, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v1    # "itemName":Ljava/lang/String;
    goto :goto_0

    .line 115
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

    .line 123
    const-string v0, ""

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 124
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

    .line 181
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

    invoke-direct/range {v0 .. v9}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/content/Context;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/content/Context;)V
    .locals 2
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

    .line 196
    sget v0, Lcom/alipay/mobile/antui/R$style;->noTitleTransBgDialogStyle:I

    invoke-direct {p0, p9, v0}, Lcom/alipay/mobile/antui/basic/AUDialog;-><init>(Landroid/content/Context;I)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->listViewFadeScrollbars:Ljava/lang/Boolean;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->isItemClick:Z

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mItemList:Ljava/util/List;

    .line 92
    const-string v1, ""

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->title:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->message:Ljava/lang/String;

    .line 412
    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->oldWidth:I

    .line 197
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->title:Ljava/lang/String;

    .line 198
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->message:Ljava/lang/String;

    .line 199
    iput-object p9, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mContext:Landroid/content/Context;

    .line 200
    invoke-static {p9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->inflater:Landroid/view/LayoutInflater;

    .line 201
    iput-object p5, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mPositiveString:Ljava/lang/String;

    .line 202
    iput-object p6, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mPositiveListener:Landroid/view/View$OnClickListener;

    .line 203
    iput-object p7, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mNegativeString:Ljava/lang/String;

    .line 204
    iput-object p8, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mNegativeListener:Landroid/view/View$OnClickListener;

    .line 205
    invoke-direct {p0, p3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->getMessageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mItemList:Ljava/util/List;

    .line 206
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

    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 177
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

    .line 188
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

    invoke-direct/range {v0 .. v9}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/content/Context;)V

    .line 190
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

    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;

    .line 53
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->resetLayout()V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mNegativeListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mCancelBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mPositiveListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mEnsureBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mItemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->inflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;

    .line 53
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->isItemClick:Z

    return v0
.end method

.method static synthetic access$802(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;
    .param p1, "x1"    # Z

    .line 53
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->isItemClick:Z

    return p1
.end method

.method static synthetic access$900(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;)Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mBridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

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

    .line 210
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
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

    .line 213
    .local v2, "popMenuItem":Lcom/alipay/mobile/antui/dialog/PopMenuItem;
    move-object v2, v4

    if-eqz v4, :cond_0

    .line 216
    new-instance v4, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;

    invoke-direct {v4}, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;-><init>()V

    .line 217
    .local v3, "messagePopItem":Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;
    move-object v3, v4

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->title:Ljava/lang/String;

    .line 218
    invoke-virtual {v2}, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->getResId()I

    move-result v4

    if-eqz v4, :cond_1

    .line 219
    new-instance v4, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->getResId()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;-><init>(I)V

    iput-object v4, v3, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->icon:Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

    goto :goto_1

    .line 221
    :cond_1
    new-instance v4, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v4, v3, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->icon:Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

    .line 223
    :goto_1
    invoke-virtual {v2}, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->getExternParam()Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->externParam:Ljava/util/HashMap;

    .line 224
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v2    # "popMenuItem":Lcom/alipay/mobile/antui/dialog/PopMenuItem;
    .end local v3    # "messagePopItem":Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;
    goto :goto_0

    .line 227
    :cond_2
    return-object v0

    .line 229
    .end local v0    # "messagePopItemList":Ljava/util/List;
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private init()V
    .locals 5

    .line 336
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListAdapter;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->listAdapter:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListAdapter;

    .line 337
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 338
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mNegativeString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mPositiveString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->buttonsContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->buttonsContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->buttonsDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->updateFootState(Z)V

    .line 348
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mNegativeString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mCancelBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mNegativeString:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mCancelBtn:Landroid/widget/Button;

    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$2;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 363
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mPositiveString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mEnsureBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mPositiveString:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mEnsureBtn:Landroid/widget/Button;

    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$3;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$3;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mEnsureBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 379
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 380
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->titleContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 382
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->titleContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->headDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->updateHeadState(Z)V

    .line 387
    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 388
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 391
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->messageContent:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 393
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 395
    :goto_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 396
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->messageView:Lcom/alipay/mobile/antui/basic/AUTextView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->messageView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    return-void

    .line 399
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->messageView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 401
    return-void
.end method

.method private resetLayout()V
    .locals 6

    const-string v0, "TinyMenuDialog"

    .line 416
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 417
    .local v2, "context":Landroid/content/Context;
    move-object v2, v1

    invoke-static {v1}, Lcom/alipay/mobile/antui/utils/ToolUtils;->getScreenWidth_Height(Landroid/content/Context;)[I

    move-result-object v1

    const/4 v3, 0x0

    aget v1, v1, v3

    .line 418
    .local v3, "screenWidth":I
    move v3, v1

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE10:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    .line 419
    .local v1, "width":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "reset layout int old menu screenWidth = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", oldwidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->oldWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", newwidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->oldWidth:I

    if-eq v4, v1, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, -0x2

    invoke-virtual {v4, v1, v5}, Landroid/view/Window;->setLayout(II)V

    .line 425
    :cond_0
    iput v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->oldWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    .end local v1    # "width":I
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "screenWidth":I
    :cond_1
    return-void

    .line 427
    :catchall_0
    move-exception v1

    .line 428
    .local v1, "tr":Ljava/lang/Throwable;
    const-string/jumbo v2, "reset layout exception "

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 430
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public getMaxItems()F
    .locals 2

    .line 473
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->maxItems:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 474
    return v0

    .line 476
    :cond_0
    const/high16 v0, 0x40a00000    # 5.0f

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 250
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUDialog;->onCreate(Landroid/os/Bundle;)V

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_list_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 252
    .local v0, "dialogView":Landroid/view/View;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/alipay/mobile/nebulaappproxy/R$layout;->tiny_menu_actionsheet:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 254
    .local v1, "rootView":Landroid/view/ViewGroup;
    sget v2, Lcom/alipay/mobile/antui/R$id;->dialog_listView:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    .line 256
    iget v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->singleItemHeight:F

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-lez v5, :cond_0

    .line 257
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setSingleItemHeight(F)V

    .line 259
    :cond_0
    iget v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->maxItems:F

    cmpl-float v3, v2, v4

    if-lez v3, :cond_1

    .line 260
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setMaxItems(F)V

    .line 263
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->listViewFadeScrollbars:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 264
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setScrollbarFadingEnabled(Z)V

    .line 267
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_DIALOG_DIVIDER_COLOR:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 268
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/antui/R$dimen;->AU_DIVIDER_SPACE1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setDividerHeight(I)V

    .line 269
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setHeaderDividersEnabled(Z)V

    .line 270
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setFooterDividersEnabled(Z)V

    .line 271
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    sget v4, Lcom/alipay/mobile/antui/R$drawable;->au_dialog_bg:I

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setBackgroundResource(I)V

    .line 273
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->addHeaderView(Landroid/view/View;)V

    .line 275
    sget v2, Lcom/alipay/mobile/antui/R$id;->title_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->titleContainer:Landroid/view/View;

    .line 276
    sget v4, Lcom/alipay/mobile/antui/R$id;->title:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->titleView:Landroid/widget/TextView;

    .line 277
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->titleContainer:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/antui/R$id;->message_content:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->messageContent:Landroid/widget/ScrollView;

    .line 278
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->titleContainer:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/antui/R$id;->message:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->messageView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 279
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/antui/basic/AUTextView;->setMinLines(I)V

    .line 280
    sget v2, Lcom/alipay/mobile/antui/R$id;->head_divider:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->headDivider:Landroid/view/View;

    .line 282
    sget v2, Lcom/alipay/mobile/antui/R$id;->bottom_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->buttonsContainer:Landroid/view/View;

    .line 283
    sget v3, Lcom/alipay/mobile/antui/R$id;->ensure:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mEnsureBtn:Landroid/widget/Button;

    .line 284
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->buttonsContainer:Landroid/view/View;

    sget v3, Lcom/alipay/mobile/antui/R$id;->cancel:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mCancelBtn:Landroid/widget/Button;

    .line 285
    sget v2, Lcom/alipay/mobile/antui/R$id;->bottom_divider:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->buttonsDivider:Landroid/view/View;

    .line 291
    sget v2, Lcom/alipay/mobile/nebulaappproxy/R$id;->menu_action_text:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mTipsText:Landroid/widget/TextView;

    .line 292
    sget v2, Lcom/alipay/mobile/nebulaappproxy/R$id;->menu_action_content:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mTipsContent:Landroid/view/ViewGroup;

    .line 294
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->setContentView(Landroid/view/View;)V

    .line 295
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->init()V

    .line 297
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->isFoldingScreen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 298
    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 305
    :cond_3
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

    .line 552
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->listener:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 553
    invoke-interface {v0, p2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$OnItemClickListener;->onItemClick(Landroid/view/View;)V

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->adapterListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_1

    .line 556
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 558
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->dismiss()V

    .line 559
    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 309
    invoke-super {p0}, Lcom/alipay/mobile/antui/basic/AUDialog;->onStart()V

    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mTipsContent:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_0

    .line 313
    return-void

    .line 316
    :cond_0
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getAppId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuUtils;->showActionIcon(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    return-void

    .line 322
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->getInstance()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 323
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->getCurrentState(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;

    move-result-object v0

    const/4 v2, 0x0

    .line 325
    .local v2, "state":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;
    move-object v2, v0

    if-nez v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mTipsContent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 328
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 330
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mTipsText:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionStateResourceHelper;->getTips(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mTipsContent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 333
    .end local v0    # "resources":Landroid/content/res/Resources;
    return-void
.end method

.method public setBridgeContext(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p1, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 611
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mBridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 612
    return-void
.end method

.method public setH5Page(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0
    .param p1, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 607
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 608
    return-void
.end method

.method public setListViewScrollbarFadingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 486
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->listViewFadeScrollbars:Ljava/lang/Boolean;

    .line 487
    return-void
.end method

.method public setMaxItems(F)V
    .locals 0
    .param p1, "maxItems"    # F

    .line 464
    iput p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->maxItems:F

    .line 465
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 562
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$4;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$4;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->setOnItemClickListener(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$OnItemClickListener;)V

    .line 589
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$5;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$5;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 604
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 244
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->adapterListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 245
    return-void
.end method

.method public setOnItemClickListener(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$OnItemClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->listener:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$OnItemClickListener;

    .line 238
    return-void
.end method

.method public setSingleItemHeight(F)V
    .locals 0
    .param p1, "singleItemHeight"    # F

    .line 495
    iput p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->singleItemHeight:F

    .line 496
    return-void
.end method

.method public show()V
    .locals 0

    .line 408
    invoke-super {p0}, Lcom/alipay/mobile/antui/basic/AUDialog;->show()V

    .line 409
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->resetLayout()V

    .line 410
    return-void
.end method

.method public updateContentData(Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "arrayList"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 615
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .local v0, "menuItemList":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 617
    new-instance v2, Lcom/alipay/mobile/antui/dialog/PopMenuItem;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/antui/dialog/PopMenuItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 619
    .end local v1    # "index":I
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->updateData(Ljava/util/ArrayList;)V

    .line 620
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

    .line 439
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->listAdapter:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListAdapter;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 441
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mItemList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->getMessageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 442
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->listAdapter:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListAdapter;->notifyDataSetChanged()V

    .line 444
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

    .line 451
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->listAdapter:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListAdapter;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 453
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 454
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->listAdapter:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListAdapter;->notifyDataSetChanged()V

    .line 456
    :cond_0
    return-void
.end method

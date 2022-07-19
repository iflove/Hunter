.class public Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;
.super Lcom/alipay/mobile/antui/basic/AUDialog;
.source "AUShortcutDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/dialog/AUShortcutDialog$OnDismissCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AUShortcutDialog"


# instance fields
.field public backBtn:Lcom/alipay/mobile/antui/basic/AUButton;

.field public contentView:Landroid/view/View;

.field public detailBtn:Lcom/alipay/mobile/antui/basic/AUButton;

.field public mOnDismissListener:Lcom/alipay/mobile/antui/dialog/AUShortcutDialog$OnDismissCallback;

.field public msgTv:Lcom/alipay/mobile/antui/basic/AUTextView;

.field public neverShowCi:Lcom/alipay/mobile/antui/common/AUCheckIcon;

.field public neverShowLl:Landroid/widget/LinearLayout;

.field public neverShowTV:Lcom/alipay/mobile/antui/basic/AUTextView;

.field public titleTv:Lcom/alipay/mobile/antui/basic/AUTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    sget v0, Lcom/alipay/mobile/antui/R$style;->noTitleTransBgDialogStyle:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUDialog;-><init>(Landroid/content/Context;I)V

    .line 39
    const-string v0, "AUShortcutDialog"

    const-string/jumbo v1, "new AUShortcutDialog"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_shortcut_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;->contentView:Landroid/view/View;

    .line 41
    sget v1, Lcom/alipay/mobile/antui/R$id;->short_cut_title_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;->titleTv:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;->contentView:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/antui/R$id;->short_cut_msg_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;->msgTv:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;->contentView:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/antui/R$id;->short_cut_never_show_ll:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;->neverShowLl:Landroid/widget/LinearLayout;

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;->contentView:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/antui/R$id;->short_cut_never_show_ci:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/common/AUCheckIcon;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;->neverShowCi:Lcom/alipay/mobile/antui/common/AUCheckIcon;

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;->contentView:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/antui/R$id;->short_cut_never_show_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;->neverShowTV:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;->contentView:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/antui/R$id;->short_cut_back_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUButton;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;->backBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;->contentView:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/antui/R$id;->short_cut_detail_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUButton;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;->detailBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;->contentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;->setContentView(Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;->neverShowLl:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog$1;-><init>(Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;->backBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    new-instance v1, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog$2;-><init>(Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance v0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog$3;-><init>(Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 73
    return-void
.end method


# virtual methods
.method public setOnClickDetailListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;->detailBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method public setOnDismissCallback(Lcom/alipay/mobile/antui/dialog/AUShortcutDialog$OnDismissCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/alipay/mobile/antui/dialog/AUShortcutDialog$OnDismissCallback;

    .line 86
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;->mOnDismissListener:Lcom/alipay/mobile/antui/dialog/AUShortcutDialog$OnDismissCallback;

    .line 87
    return-void
.end method

.class public Lcom/alipay/mobile/nebulacore/view/H5Dialog;
.super Ljava/lang/Object;
.source "H5Dialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:Landroid/app/AlertDialog;

.field private d:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

.field private e:Landroid/view/View;

.field private f:I

.field private g:Ljava/lang/CharSequence;

.field private h:I

.field private i:Ljava/lang/CharSequence;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/LinearLayout$LayoutParams;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/EditText;

.field private n:Z

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:I

.field private q:Landroid/view/View;

.field private r:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->n:Z

    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->b:Landroid/content/Context;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/view/H5Dialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->c:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->b:Landroid/content/Context;

    return-object v0
.end method

.method private static a()Z
    .locals 2

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->c:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .line 31
    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->f:I

    return v0
.end method

.method static synthetic e(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->g:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .line 31
    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->h:I

    return v0
.end method

.method static synthetic g(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->i:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->j:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->k:Landroid/widget/LinearLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->l:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic k(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .line 31
    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->p:I

    return v0
.end method

.method static synthetic l(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic m(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic n(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .line 31
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->a:Z

    return v0
.end method

.method static synthetic o(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->r:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method public static setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 5

    .line 66
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 67
    if-nez v0, :cond_0

    .line 69
    return-void

    .line 72
    :cond_0
    nop

    .line 73
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 74
    const/4 v4, 0x0

    invoke-interface {v0, v2, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 75
    invoke-virtual {v4, v1, v1}, Landroid/view/View;->measure(II)V

    .line 76
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 80
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int v2, v2, v0

    add-int/2addr v3, v2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 81
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 126
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 109
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->o:Landroid/graphics/drawable/Drawable;

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->d:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 113
    :cond_0
    return-object p0
.end method

.method public setBackgroundResource(I)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 1
    .param p1, "resId"    # I

    .line 117
    iput p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->p:I

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->d:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->setBackgroundResource(I)V

    .line 121
    :cond_0
    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 1
    .param p1, "cancel"    # Z

    .line 273
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->a:Z

    .line 274
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->d:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->setCanceledOnTouchOutside(Z)V

    .line 277
    :cond_0
    return-object p0
.end method

.method public setContentView(Landroid/view/View;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 101
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->q:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->d:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->setContentView(Landroid/view/View;)V

    .line 105
    :cond_0
    return-object p0
.end method

.method public setMessage(I)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 1
    .param p1, "resId"    # I

    .line 145
    iput p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->h:I

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->d:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->setMessage(I)V

    .line 149
    :cond_0
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 153
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->i:Ljava/lang/CharSequence;

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->d:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->setMessage(Ljava/lang/CharSequence;)V

    .line 157
    :cond_0
    return-object p0
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 215
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->l:Landroid/widget/Button;

    .line 216
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->k:Landroid/widget/LinearLayout$LayoutParams;

    .line 220
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->l:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->l:Landroid/widget/Button;

    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_dialog_button:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->l:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->l:Landroid/widget/Button;

    const/16 v1, 0xde

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->l:Landroid/widget/Button;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->l:Landroid/widget/Button;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->l:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    invoke-static {}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->l:Landroid/widget/Button;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 231
    :cond_0
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 253
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->l:Landroid/widget/Button;

    .line 254
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->k:Landroid/widget/LinearLayout$LayoutParams;

    .line 258
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->l:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->l:Landroid/widget/Button;

    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_dialog_button:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->l:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->l:Landroid/widget/Button;

    const/16 v1, 0xde

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->l:Landroid/widget/Button;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->l:Landroid/widget/Button;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->l:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    invoke-static {}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->l:Landroid/widget/Button;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 269
    :cond_0
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 0
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 281
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->r:Landroid/content/DialogInterface$OnDismissListener;

    .line 282
    return-object p0
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 7
    .param p1, "resId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 161
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->j:Landroid/widget/Button;

    .line 162
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 166
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->j:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->j:Landroid/widget/Button;

    sget v3, Lcom/alipay/mobile/nebula/R$drawable;->h5_dialog_button:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 168
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->j:Landroid/widget/Button;

    const/16 v3, 0xff

    const/16 v4, 0x23

    const/16 v5, 0x9f

    const/16 v6, 0xf2

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 169
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->j:Landroid/widget/Button;

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setText(I)V

    .line 170
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->j:Landroid/widget/Button;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setGravity(I)V

    .line 171
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->j:Landroid/widget/Button;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 172
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 176
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v1, v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->b:Landroid/content/Context;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->b:Landroid/content/Context;

    .line 177
    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->b:Landroid/content/Context;

    .line 178
    const/high16 v6, 0x41100000    # 9.0f

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 176
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 179
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->j:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->j:Landroid/widget/Button;

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    invoke-static {}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->j:Landroid/widget/Button;

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 184
    :cond_0
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 188
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->j:Landroid/widget/Button;

    .line 189
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 193
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->j:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->j:Landroid/widget/Button;

    sget v3, Lcom/alipay/mobile/nebula/R$drawable;->h5_dialog_button:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 195
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->j:Landroid/widget/Button;

    const/16 v3, 0xff

    const/16 v4, 0x23

    const/16 v5, 0x9f

    const/16 v6, 0xf2

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 196
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->j:Landroid/widget/Button;

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->j:Landroid/widget/Button;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setGravity(I)V

    .line 198
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->j:Landroid/widget/Button;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 199
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 203
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v1, v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->b:Landroid/content/Context;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->b:Landroid/content/Context;

    .line 204
    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->b:Landroid/content/Context;

    .line 205
    const/high16 v6, 0x41100000    # 9.0f

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 203
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 206
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->j:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->j:Landroid/widget/Button;

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    invoke-static {}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->j:Landroid/widget/Button;

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 211
    :cond_0
    return-object p0
.end method

.method public setPrompt(ILandroid/view/View$OnClickListener;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 2
    .param p1, "resId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 235
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->m:Landroid/widget/EditText;

    .line 236
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->k:Landroid/widget/LinearLayout$LayoutParams;

    .line 240
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->m:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->m:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(I)V

    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->m:Landroid/widget/EditText;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->m:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->m:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    invoke-static {}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->m:Landroid/widget/EditText;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 249
    :cond_0
    return-object p0
.end method

.method public setTitle(I)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 1
    .param p1, "resId"    # I

    .line 129
    iput p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->f:I

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->d:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->setTitle(I)V

    .line 133
    :cond_0
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 137
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->g:Ljava/lang/CharSequence;

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->d:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    :cond_0
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 93
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->e:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->d:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->setView(Landroid/view/View;)V

    .line 97
    :cond_0
    return-object p0
.end method

.method public show()V
    .locals 2

    .line 85
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->n:Z

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;-><init>(Lcom/alipay/mobile/nebulacore/view/H5Dialog;B)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->d:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 89
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->n:Z

    .line 90
    return-void
.end method

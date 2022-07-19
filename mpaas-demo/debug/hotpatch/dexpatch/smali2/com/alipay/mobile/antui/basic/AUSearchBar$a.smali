.class final Lcom/alipay/mobile/antui/basic/AUSearchBar$a;
.super Ljava/lang/Object;
.source "AUSearchBar.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/basic/AUSearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/basic/AUSearchBar;

.field private b:Landroid/text/TextWatcher;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/antui/basic/AUSearchBar;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar$a;->a:Lcom/alipay/mobile/antui/basic/AUSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/antui/basic/AUSearchBar;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/antui/basic/AUSearchBar;

    .line 444
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUSearchBar$a;-><init>(Lcom/alipay/mobile/antui/basic/AUSearchBar;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/text/TextWatcher;)V
    .locals 0
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .line 449
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar$a;->b:Landroid/text/TextWatcher;

    .line 450
    return-void
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .line 473
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar$a;->b:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 474
    invoke-interface {v0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 476
    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 454
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar$a;->b:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 455
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 457
    :cond_0
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 461
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar$a;->a:Lcom/alipay/mobile/antui/basic/AUSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->setButtonActivity()V

    goto :goto_1

    .line 462
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar$a;->a:Lcom/alipay/mobile/antui/basic/AUSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->setButtonUnActivity()V

    .line 466
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar$a;->b:Landroid/text/TextWatcher;

    if-eqz v0, :cond_2

    .line 467
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 469
    :cond_2
    return-void
.end method

.class final Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;
.super Lcom/alipay/mobile/antui/basic/AULinearLayout;
.source "AUPopMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/dialog/AUPopMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUPopMenu;

.field private b:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private c:Lcom/alipay/mobile/antui/badge/AUBadgeView;

.field private d:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private e:Lcom/alipay/mobile/antui/badge/AUBadgeView;

.field private f:Lcom/alipay/mobile/antui/badge/AUBadgeView;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/antui/dialog/AUPopMenu;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 291
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->a:Lcom/alipay/mobile/antui/dialog/AUPopMenu;

    .line 292
    invoke-direct {p0, p2}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;)V

    .line 293
    invoke-direct {p0}, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->b()V

    .line 294
    return-void
.end method

.method private static a(Lcom/alipay/mobile/antui/badge/AUBadgeView;Ljava/util/HashMap;)V
    .locals 3
    .param p0, "badgeView"    # Lcom/alipay/mobile/antui/badge/AUBadgeView;
    .param p1, "ext"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/antui/badge/AUBadgeView;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 333
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->dismiss()V

    .line 334
    if-eqz p1, :cond_3

    .line 335
    const-string v0, "badgeType"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 336
    .local v1, "badgeType":Ljava/lang/Object;
    move-object v1, v0

    instance-of v0, v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "badgeText"

    if-eqz v0, :cond_2

    :try_start_1
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 337
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setVisibility(I)V

    .line 338
    const-string/jumbo v0, "msg_redpoint"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setRedPoint(Z)V

    return-void

    .line 340
    :cond_0
    const-string/jumbo v0, "msg_text"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 342
    .local v0, "badgeText":Ljava/lang/String;
    sget-object v2, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->NUM:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setStyleAndMsgText(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V

    .line 343
    .end local v0    # "badgeText":Ljava/lang/String;
    return-void

    :cond_1
    const-string/jumbo v0, "text"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 344
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 345
    .restart local v0    # "badgeText":Ljava/lang/String;
    sget-object v2, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->TEXT:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setStyleAndMsgText(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V

    .line 346
    .end local v0    # "badgeText":Ljava/lang/String;
    return-void

    .line 347
    :cond_2
    instance-of v0, v1, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    if-eqz v0, :cond_3

    .line 348
    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setStyleAndContent(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    .end local v1    # "badgeType":Ljava/lang/Object;
    :cond_3
    return-void

    .line 351
    :catchall_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setBadgeInfo ext : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseMessagePopItemView"

    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private a(Lcom/alipay/mobile/antui/basic/AUTextView;Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;)V
    .locals 5
    .param p1, "titleView"    # Lcom/alipay/mobile/antui/basic/AUTextView;
    .param p2, "item"    # Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;

    .line 319
    invoke-static {}, Lcom/alipay/mobile/antui/theme/AUThemeManager;->getCurrentTheme()Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    move-result-object v0

    .line 320
    .local v0, "theme":Lcom/alipay/mobile/antui/theme/AUAbsTheme;
    iget-object v1, p2, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->title:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/antui/theme/AUThemeKey;->FLOATMENU_TEXTCOLOR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getColor(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 322
    .local v3, "textColor":Ljava/lang/Integer;
    move-object v3, v1

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextColor(I)V

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v4, Lcom/alipay/mobile/antui/theme/AUThemeKey;->FLOATMENU_TEXTSIZE:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getDimension(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 326
    .local v2, "textSize":Ljava/lang/Float;
    move-object v2, v1

    if-eqz v1, :cond_1

    .line 327
    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p1, v1, v4}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    .line 329
    :cond_1
    return-void
.end method

.method private b()V
    .locals 3

    .line 297
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_pop_menu_item:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->a:Lcom/alipay/mobile/antui/dialog/AUPopMenu;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUPopMenu;->itemMargin:I
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->access$200(Lcom/alipay/mobile/antui/dialog/AUPopMenu;)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->a:Lcom/alipay/mobile/antui/dialog/AUPopMenu;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUPopMenu;->itemMargin:I
    invoke-static {v1}, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->access$200(Lcom/alipay/mobile/antui/dialog/AUPopMenu;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->setPadding(IIII)V

    .line 299
    sget v0, Lcom/alipay/mobile/antui/R$id;->pop_title:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->b:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 300
    sget v0, Lcom/alipay/mobile/antui/R$id;->pop_title_invisible:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->d:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 301
    sget v0, Lcom/alipay/mobile/antui/R$id;->red_point:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/badge/AUBadgeView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->c:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    .line 302
    sget v0, Lcom/alipay/mobile/antui/R$id;->red_point_invisible:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/badge/AUBadgeView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->e:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    .line 303
    sget v0, Lcom/alipay/mobile/antui/R$id;->red_point_invisible1:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/badge/AUBadgeView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->f:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    .line 304
    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->b:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method public final a(Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;)V
    .locals 2
    .param p1, "item"    # Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;

    .line 307
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->b:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->a(Lcom/alipay/mobile/antui/basic/AUTextView;Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;)V

    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->d:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->a(Lcom/alipay/mobile/antui/basic/AUTextView;Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;)V

    .line 313
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->c:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    iget-object v1, p1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->externParam:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->a(Lcom/alipay/mobile/antui/badge/AUBadgeView;Ljava/util/HashMap;)V

    .line 314
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->e:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    iget-object v1, p1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->externParam:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->a(Lcom/alipay/mobile/antui/badge/AUBadgeView;Ljava/util/HashMap;)V

    .line 315
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->f:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    iget-object v1, p1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->externParam:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->a(Lcom/alipay/mobile/antui/badge/AUBadgeView;Ljava/util/HashMap;)V

    .line 316
    return-void

    .line 308
    :cond_1
    :goto_0
    return-void
.end method

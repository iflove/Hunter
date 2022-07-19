.class public Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionStateResourceHelper;
.super Ljava/lang/Object;
.source "TinyActionStateResourceHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIconUnicode(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "action"    # Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    .line 12
    .local v0, "iconUnicode":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x37b993af

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x714f9fb5

    if-eq v1, v2, :cond_2

    const v2, 0x755ac2ae

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "bluetooth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "location"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "record"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_4

    goto :goto_2

    .line 20
    :cond_4
    sget v1, Lcom/alipay/mobile/nebulaappproxy/R$string;->menu_mini_location:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 17
    :cond_5
    sget v1, Lcom/alipay/mobile/nebulaappproxy/R$string;->menu_mini_bluetooth:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 18
    goto :goto_2

    .line 14
    :cond_6
    sget v1, Lcom/alipay/mobile/nebulaappproxy/R$string;->menu_mini_record:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 15
    nop

    .line 23
    :goto_2
    return-object v0
.end method

.method public static getTips(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "action"    # Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "tips":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x37b993af

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x714f9fb5

    if-eq v1, v2, :cond_2

    const v2, 0x755ac2ae

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "bluetooth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "location"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "record"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_4

    goto :goto_2

    .line 36
    :cond_4
    sget v1, Lcom/alipay/mobile/nebulaappproxy/R$string;->menu_tiny_use_location:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 33
    :cond_5
    sget v1, Lcom/alipay/mobile/nebulaappproxy/R$string;->menu_tiny_use_bluetooth:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    goto :goto_2

    .line 30
    :cond_6
    sget v1, Lcom/alipay/mobile/nebulaappproxy/R$string;->menu_tiny_recording:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 31
    nop

    .line 39
    :goto_2
    return-object v0
.end method

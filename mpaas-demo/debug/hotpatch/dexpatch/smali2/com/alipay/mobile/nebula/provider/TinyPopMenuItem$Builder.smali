.class public Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$Builder;
.super Ljava/lang/Object;
.source "TinyPopMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private callback:Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$TinyPopMenuItemClickListener;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconUrl:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isOverride:Z

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;
    .locals 3

    .line 55
    new-instance v0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;-><init>(Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$1;)V

    .line 56
    .local v0, "item":Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;
    iget-object v1, p0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$Builder;->id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    iget-boolean v1, p0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$Builder;->isOverride:Z

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$Builder;->id:Ljava/lang/String;

    # setter for: Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->id:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->access$102(Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 63
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$Builder;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->id:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->access$102(Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$Builder;->callback:Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$TinyPopMenuItemClickListener;

    # setter for: Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->callback:Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$TinyPopMenuItemClickListener;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->access$202(Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$TinyPopMenuItemClickListener;)Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$TinyPopMenuItemClickListener;

    .line 66
    iget-object v1, p0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$Builder;->icon:Landroid/graphics/drawable/Drawable;

    # setter for: Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->icon:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->access$302(Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 67
    iget-object v1, p0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$Builder;->iconUrl:Ljava/lang/String;

    # setter for: Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->iconUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->access$402(Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$Builder;->name:Ljava/lang/String;

    # setter for: Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->access$502(Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    return-object v0

    .line 57
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "id cannot be empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCallback(Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$TinyPopMenuItemClickListener;)Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$Builder;
    .locals 0
    .param p1, "callback"    # Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$TinyPopMenuItemClickListener;

    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$Builder;->callback:Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$TinyPopMenuItemClickListener;

    .line 46
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$Builder;->icon:Landroid/graphics/drawable/Drawable;

    .line 41
    return-object p0
.end method

.method public setIconUrl(Ljava/lang/String;)Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$Builder;
    .locals 0
    .param p1, "iconUrl"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$Builder;->iconUrl:Ljava/lang/String;

    .line 31
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$Builder;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$Builder;->id:Ljava/lang/String;

    .line 26
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$Builder;->name:Ljava/lang/String;

    .line 36
    return-object p0
.end method

.method public setOverride(Z)Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$Builder;
    .locals 0
    .param p1, "isOverride"    # Z

    .line 50
    iput-boolean p1, p0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$Builder;->isOverride:Z

    .line 51
    return-object p0
.end method

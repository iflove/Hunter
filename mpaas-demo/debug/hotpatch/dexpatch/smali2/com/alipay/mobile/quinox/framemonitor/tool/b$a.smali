.class final Lcom/alipay/mobile/quinox/framemonitor/tool/b$a;
.super Ljava/lang/Object;
.source "ProcFsReader.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/framemonitor/tool/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/collection/CircularIntArray;


# direct methods
.method constructor <init>(Landroidx/collection/CircularIntArray;)V
    .locals 0
    .param p1, "pids"    # Landroidx/collection/CircularIntArray;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/alipay/mobile/quinox/framemonitor/tool/b$a;->a:Landroidx/collection/CircularIntArray;

    .line 159
    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .line 163
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 164
    return v1

    .line 167
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 168
    .local v0, "pid":I
    iget-object v2, p0, Lcom/alipay/mobile/quinox/framemonitor/tool/b$a;->a:Landroidx/collection/CircularIntArray;

    invoke-virtual {v2, v0}, Landroidx/collection/CircularIntArray;->addLast(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v0    # "pid":I
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 173
    :goto_0
    return v1
.end method

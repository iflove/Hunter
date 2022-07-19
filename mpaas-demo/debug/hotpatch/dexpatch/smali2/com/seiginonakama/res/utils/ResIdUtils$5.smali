.class final Lcom/seiginonakama/res/utils/ResIdUtils$5;
.super Ljava/lang/Object;
.source "ResIdUtils.java"

# interfaces
.implements Lcom/seiginonakama/res/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seiginonakama/res/utils/ResIdUtils;->modifyResources(Ljava/io/File;Ljava/io/File;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/seiginonakama/res/utils/Callback<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$arsc:Ljava/io/File;

.field final synthetic val$arscResourceValueVisitor:Lcom/seiginonakama/res/utils/VisitUtils$Visitor;

.field final synthetic val$entryVisitor:Lcom/seiginonakama/res/utils/VisitUtils$Visitor;

.field final synthetic val$manifest:Ljava/io/File;

.field final synthetic val$res:Ljava/io/File;

.field final synthetic val$resourceMapChunkVisitor:Lcom/seiginonakama/res/utils/VisitUtils$Visitor;

.field final synthetic val$xmlResourceValueVisitor:Lcom/seiginonakama/res/utils/VisitUtils$Visitor;


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/seiginonakama/res/utils/ResIdUtils$5;->val$arsc:Ljava/io/File;

    iput-object p2, p0, Lcom/seiginonakama/res/utils/ResIdUtils$5;->val$entryVisitor:Lcom/seiginonakama/res/utils/VisitUtils$Visitor;

    iput-object p3, p0, Lcom/seiginonakama/res/utils/ResIdUtils$5;->val$arscResourceValueVisitor:Lcom/seiginonakama/res/utils/VisitUtils$Visitor;

    iput-object p4, p0, Lcom/seiginonakama/res/utils/ResIdUtils$5;->val$xmlResourceValueVisitor:Lcom/seiginonakama/res/utils/VisitUtils$Visitor;

    iput-object p5, p0, Lcom/seiginonakama/res/utils/ResIdUtils$5;->val$resourceMapChunkVisitor:Lcom/seiginonakama/res/utils/VisitUtils$Visitor;

    iput-object p6, p0, Lcom/seiginonakama/res/utils/ResIdUtils$5;->val$manifest:Ljava/io/File;

    iput-object p7, p0, Lcom/seiginonakama/res/utils/ResIdUtils$5;->val$res:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallback(Ljava/io/File;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "resourceFile":Lcom/abq/qba/e/j;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/seiginonakama/res/utils/ResIdUtils$5;->val$arsc:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/seiginonakama/res/utils/ResIdUtils$5;->val$entryVisitor:Lcom/seiginonakama/res/utils/VisitUtils$Visitor;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/seiginonakama/res/utils/ResIdUtils$5;->val$arscResourceValueVisitor:Lcom/seiginonakama/res/utils/VisitUtils$Visitor;

    if-eqz v1, :cond_4

    .line 193
    :cond_0
    const/4 v1, 0x0

    .line 195
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 196
    move-object v1, v3

    invoke-static {v3}, Lcom/abq/qba/e/j;->a(Ljava/io/InputStream;)Lcom/abq/qba/e/j;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 200
    invoke-static {v1}, Lcom/seiginonakama/res/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 201
    nop

    .line 202
    invoke-static {v0}, Lcom/seiginonakama/res/utils/VisitUtils;->getResTableFrom(Lcom/abq/qba/e/j;)Lcom/abq/qba/e/l;

    move-result-object v3

    .line 203
    .local v2, "resourceTableChunk":Lcom/abq/qba/e/l;
    invoke-virtual {v3}, Lcom/abq/qba/e/l;->h()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/abq/qba/e/f;

    .line 204
    .local v4, "packageChunk":Lcom/abq/qba/e/f;
    iget-object v5, p0, Lcom/seiginonakama/res/utils/ResIdUtils$5;->val$entryVisitor:Lcom/seiginonakama/res/utils/VisitUtils$Visitor;

    if-eqz v5, :cond_1

    .line 205
    invoke-static {v4, v5}, Lcom/seiginonakama/res/utils/VisitUtils;->visitEntry(Lcom/abq/qba/e/f;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;)V

    .line 207
    :cond_1
    iget-object v5, p0, Lcom/seiginonakama/res/utils/ResIdUtils$5;->val$arscResourceValueVisitor:Lcom/seiginonakama/res/utils/VisitUtils$Visitor;

    if-eqz v5, :cond_2

    .line 208
    invoke-static {v4, v5}, Lcom/seiginonakama/res/utils/VisitUtils;->visitResourceValue(Lcom/abq/qba/e/f;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;)V

    .line 210
    .end local v4    # "packageChunk":Lcom/abq/qba/e/f;
    :cond_2
    goto :goto_0

    .line 211
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "resourceTableChunk":Lcom/abq/qba/e/l;
    :cond_3
    goto/16 :goto_2

    .line 197
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    .line 198
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "resourceFile":Lcom/abq/qba/e/j;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "file":Ljava/io/File;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 200
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "resourceFile":Lcom/abq/qba/e/j;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "file":Ljava/io/File;
    :catchall_1
    move-exception v2

    invoke-static {v1}, Lcom/seiginonakama/res/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    .line 211
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".xml"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/seiginonakama/res/utils/ResIdUtils$5;->val$xmlResourceValueVisitor:Lcom/seiginonakama/res/utils/VisitUtils$Visitor;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/seiginonakama/res/utils/ResIdUtils$5;->val$resourceMapChunkVisitor:Lcom/seiginonakama/res/utils/VisitUtils$Visitor;

    if-eqz v1, :cond_3

    .line 212
    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/seiginonakama/res/utils/ResIdUtils$5;->val$manifest:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 213
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/seiginonakama/res/utils/ResIdUtils$5;->val$res:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "raw"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 214
    :cond_6
    const/4 v1, 0x0

    .line 216
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 217
    move-object v1, v3

    invoke-static {v3}, Lcom/abq/qba/e/j;->a(Ljava/io/InputStream;)Lcom/abq/qba/e/j;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v3

    .line 221
    invoke-static {v1}, Lcom/seiginonakama/res/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 222
    nop

    .line 223
    invoke-virtual {v0}, Lcom/abq/qba/e/j;->a()Ljava/util/List;

    move-result-object v3

    move-object v4, v2

    .line 224
    .local v4, "chunks":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/abq/qba/e/a;

    .line 225
    .local v2, "chunk":Lcom/abq/qba/e/a;
    iget-object v6, p0, Lcom/seiginonakama/res/utils/ResIdUtils$5;->val$xmlResourceValueVisitor:Lcom/seiginonakama/res/utils/VisitUtils$Visitor;

    iget-object v7, p0, Lcom/seiginonakama/res/utils/ResIdUtils$5;->val$resourceMapChunkVisitor:Lcom/seiginonakama/res/utils/VisitUtils$Visitor;

    # invokes: Lcom/seiginonakama/res/utils/ResIdUtils;->visitResourceValueInXml(Lcom/abq/qba/e/a;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;)V
    invoke-static {v5, v6, v7}, Lcom/seiginonakama/res/utils/ResIdUtils;->access$100(Lcom/abq/qba/e/a;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;)V

    .line 226
    .end local v2    # "chunk":Lcom/abq/qba/e/a;
    goto :goto_1

    .line 218
    .end local v4    # "chunks":Ljava/util/List;
    :catchall_2
    move-exception v2

    .line 219
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "resourceFile":Lcom/abq/qba/e/j;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "file":Ljava/io/File;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 221
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "resourceFile":Lcom/abq/qba/e/j;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "file":Ljava/io/File;
    :catchall_3
    move-exception v2

    invoke-static {v1}, Lcom/seiginonakama/res/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    .line 230
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    .line 231
    const/4 v1, 0x0

    .line 233
    .local v1, "outputStream":Ljava/io/DataOutputStream;
    :try_start_4
    invoke-static {p1}, Lcom/seiginonakama/res/utils/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 234
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 235
    move-object v1, v2

    invoke-virtual {v0}, Lcom/abq/qba/e/j;->b()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 236
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 240
    invoke-static {v1}, Lcom/seiginonakama/res/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 241
    return-void

    .line 240
    :catchall_4
    move-exception v2

    goto :goto_3

    .line 237
    :catch_0
    move-exception v2

    .line 238
    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "resourceFile":Lcom/abq/qba/e/j;
    .end local v1    # "outputStream":Ljava/io/DataOutputStream;
    .end local p1    # "file":Ljava/io/File;
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 240
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "resourceFile":Lcom/abq/qba/e/j;
    .restart local v1    # "outputStream":Ljava/io/DataOutputStream;
    .restart local p1    # "file":Ljava/io/File;
    :goto_3
    invoke-static {v1}, Lcom/seiginonakama/res/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    .line 243
    .end local v1    # "outputStream":Ljava/io/DataOutputStream;
    :cond_8
    return-void
.end method

.method public final bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    .line 188
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/seiginonakama/res/utils/ResIdUtils$5;->onCallback(Ljava/io/File;)V

    return-void
.end method

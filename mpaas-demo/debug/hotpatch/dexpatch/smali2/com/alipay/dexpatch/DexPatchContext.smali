.class public interface abstract Lcom/alipay/dexpatch/DexPatchContext;
.super Ljava/lang/Object;
.source "DexPatchContext.java"


# static fields
.field public static final CLIENT_EVENT_BACKGROUND:I = 0x1

.field public static final CLIENT_EVENT_FOREGROUND:I = 0x0

.field public static final CL_TYPE_CUSTOM:I = 0x1

.field public static final CL_TYPE_SYSTEM:I


# virtual methods
.method public abstract beforeModulePatchLoad(Ljava/lang/String;)V
.end method

.method public abstract classesLoadByOriginClassLoader()[Ljava/lang/String;
.end method

.method public abstract customPatch(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract getClassLoaderType(Ljava/lang/String;)I
.end method

.method public abstract getModuleName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getOriginDexFilePath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isPureProcess()Z
.end method

.method public abstract loadByOriginClassLoader(ILjava/lang/String;)Z
.end method

.method public abstract onPatchPrepared(Ljava/lang/String;)V
.end method

.method public abstract triggerKillProcess()V
.end method

.method public abstract triggerKillPureProcesses(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

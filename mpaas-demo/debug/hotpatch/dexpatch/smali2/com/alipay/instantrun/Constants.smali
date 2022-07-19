.class public Lcom/alipay/instantrun/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ADD_ANNOTATION:Ljava/lang/String; = "com.alipay.instantrun.patch.annotaion.Add"

.field public static final ARRAY_TYPE:Ljava/lang/String; = "["

.field public static final ASPECTJ_AROUND_CLASS:Ljava/lang/String; = "org.aspectj.runtime.internal.AroundClosure"

.field public static AddAnnotationClass:Ljava/lang/Class; = null

.field public static final BOOLEAN:Ljava/lang/String; = "boolean"

.field public static final BYTE:Ljava/lang/String; = "byte"

.field public static final CHAR:Ljava/lang/String; = "char"

.field public static final CLASSES_DEX_NAME:Ljava/lang/String; = "classes.dex"

.field public static final CONSTRUCTOR:Ljava/lang/String; = "Constructor"

.field public static final DEFAULT_MAPPING_FILE:Ljava/lang/String; = "/instantrun/mapping.txt"

.field public static final DOUBLE:Ljava/lang/String; = "double"

.field public static final FLOAT:Ljava/lang/String; = "float"

.field public static final GET_REAL_PARAMETER:Ljava/lang/String; = "getRealParameter"

.field public static final INLINE_PATCH_SUFFIX:Ljava/lang/String; = "InLinePatch"

.field public static final INSERT_FIELD_NAME:Ljava/lang/String; = "redirectTarget"

.field public static final INSTANT_RUN_ASSIST_SUFFIX:Ljava/lang/String; = "InstantRunAssist"

.field public static final INSTANT_RUN_GENERATE_DIRECTORY:Ljava/lang/String; = "outputs/instantrun"

.field public static final INSTANT_RUN_PATCH_CLASSES_DIR:Ljava/lang/String; = "patchClasses"

.field public static final INSTANT_RUN_PUBLIC_SUFFIX:Ljava/lang/String; = "InstantRunPublic"

.field public static final INSTANT_RUN_UTILS_FULL_NAME:Ljava/lang/String; = "com.alipay.instantrun.utils.EnhancedInstantRunUtils"

.field public static final INSTANT_RUN_VERSION:Ljava/lang/String; = "0.2.3"

.field public static final INSTANT_RUN_XML:Ljava/lang/String; = "instantrun.xml"

.field public static final INT:Ljava/lang/String; = "int"

.field public static final INTERFACE_NAME:Ljava/lang/String; = "com.alipay.instantrun.ChangeQuickRedirect"

.field public static final LAMBDA_MODIFY:Ljava/lang/String; = "com.alipay.instantrun.patch.InstantRunModify"

.field public static final LANG_BOOLEAN:Ljava/lang/String; = "java.lang.Boolean"

.field public static final LANG_BYTE:Ljava/lang/String; = "java.lang.Byte"

.field public static final LANG_CHARACTER:Ljava/lang/String; = "Character"

.field public static final LANG_DOUBLE:Ljava/lang/String; = "java.lang.Double"

.field public static final LANG_FLOAT:Ljava/lang/String; = "java.lang.Float"

.field public static final LANG_INT:Ljava/lang/String; = "java.lang.Integer"

.field public static final LANG_LONG:Ljava/lang/String; = "java.lang.Long"

.field public static final LANG_SHORT:Ljava/lang/String; = "java.lang.Short"

.field public static final LANG_VOID:Ljava/lang/String; = "java.lang.Void"

.field public static final LIB_NAME_ARRAY:[Ljava/lang/String;

.field public static final LONG:Ljava/lang/String; = "long"

.field public static final MANIFEST_NAME:Ljava/lang/String; = "PATCH"

.field public static final METHOD_MAP_OUT_PATH:Ljava/lang/String; = "/outputs/instantrun/methodsMap.instantrun"

.field public static final METHOD_MAP_PATH:Ljava/lang/String; = "/instantrun/methodsMap.instantrun"

.field public static final METHOD_MATCH_MODE_ID:Ljava/lang/String; = "id"

.field public static final METHOD_MATCH_MODE_SIG:Ljava/lang/String; = "signature"

.field public static final MODIFY_ANNOTATION:Ljava/lang/String; = "com.alipay.instantrun.patch.annotaion.Modify"

.field public static ModifyAnnotationClass:Ljava/lang/Class; = null

.field public static final NO_NEED_REFLECT_CLASS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final OBJECT_TYPE:C = 'L'

.field public static final OBSCURE:Ljava/lang/Boolean;

.field public static final ORIGIN_CLASS:Ljava/lang/String; = "originClass"

.field public static final PACKAGE_NAME_END:Ljava/lang/String; = ";"

.field public static final PACKAGE_NAME_START:Ljava/lang/String;

.field public static final PATCH_CONTROL_SUFFIX:Ljava/lang/String; = "Control"

.field public static final PATCH_DEX_NAME:Ljava/lang/String; = "patch.dex"

.field public static final PATCH_EXECUTE:Ljava/lang/String; = "patch execute ,other extension will be ignore "

.field public static final PATCH_JAR_NAME:Ljava/lang/String; = "patch.jar"

.field public static final PATCH_PACKAGE_NAME:Ljava/lang/String; = "com.alipay.instantrun.patch"

.field public static final PATCH_SUFFIX:Ljava/lang/String; = "Patch"

.field public static final PATCH_TEMPLATE_FULL_NAME:Ljava/lang/String; = "com.alipay.instantrun.utils.PatchTemplate"

.field public static final PRIMITIVE_TYPE:Ljava/lang/String; = "ZCBSIJFDV"

.field public static final RFileClassSet:Ljava/util/Set;

.field public static final SHORT:Ljava/lang/String; = "short"

.field public static final SMALI_INVOKE_SUPER_COMMAND:Ljava/lang/String; = "invoke-super"

.field public static final SMALI_INVOKE_VIRTUAL_COMMAND:Ljava/lang/String; = "invoke-virtual"

.field public static final STATIC_FLAG:Ljava/lang/String; = "staticInstantRun"

.field public static final VOID:Ljava/lang/String; = "void"

.field public static final ZIP_FILE_NAME:Ljava/lang/String; = "alipay.jar"

.field public static isLogging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/instantrun/Constants;->ModifyAnnotationClass:Ljava/lang/Class;

    .line 51
    sput-object v0, Lcom/alipay/instantrun/Constants;->AddAnnotationClass:Ljava/lang/Class;

    .line 53
    const-string v0, "baksmali-2.1.2.jar"

    const-string/jumbo v1, "smali-2.1.2.jar"

    const-string v2, "dx.jar"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/instantrun/Constants;->LIB_NAME_ARRAY:[Ljava/lang/String;

    .line 58
    const-string v0, "L"

    sput-object v0, Lcom/alipay/instantrun/Constants;->PACKAGE_NAME_START:Ljava/lang/String;

    .line 59
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/alipay/instantrun/Constants;->OBSCURE:Ljava/lang/Boolean;

    .line 62
    sput-boolean v0, Lcom/alipay/instantrun/Constants;->isLogging:Z

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 72
    sput-object v0, Lcom/alipay/instantrun/Constants;->RFileClassSet:Ljava/util/Set;

    const-string v1, "R$array"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v1, "R$xml"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    const-string v1, "R$styleable"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    const-string v1, "R$style"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v1, "R$string"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v1, "R$raw"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    const-string v1, "R$menu"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    const-string v1, "R$layout"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    const-string v1, "R$integer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v1, "R$id"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    const-string v1, "R$drawable"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    const-string v1, "R$dimen"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    const-string v1, "R$color"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    const-string v1, "R$bool"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v1, "R$attr"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    const-string v1, "R$anim"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    const-string v0, "android.os.Bundle"

    const-string v1, "android.os.BaseBundle"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/instantrun/Constants;->NO_NEED_REFLECT_CLASS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

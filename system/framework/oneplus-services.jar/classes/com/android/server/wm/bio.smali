.class public final synthetic Lcom/android/server/wm/bio;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/wm/you/bio$sis;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/bio;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/bio;

    invoke-direct {v0}, <init>()V

    sput-object v0, INSTANCE:Lcom/android/server/wm/bio;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSystemDirectoryForUser(I)Ljava/io/File;
    .locals 0

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.class public final synthetic Lcom/android/server/am/-$$Lambda$ActivityManagerService$XMDHDkKdzWb8nQlDZRKevGp6Oa8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/os/ProcessCpuTracker$FilterStats;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$ActivityManagerService$XMDHDkKdzWb8nQlDZRKevGp6Oa8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$XMDHDkKdzWb8nQlDZRKevGp6Oa8;

    invoke-direct {v0}, <init>()V

    sput-object v0, INSTANCE:Lcom/android/server/am/-$$Lambda$ActivityManagerService$XMDHDkKdzWb8nQlDZRKevGp6Oa8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final needed(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/server/am/ActivityManagerService;->lambda$reportMemUsage$3(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result p1

    return p1
.end method

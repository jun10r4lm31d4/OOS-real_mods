.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$khEgFp5g734PWfRphYmdVxJ78QQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field private final synthetic f$1:Ljava/util/concurrent/CountDownLatch;

.field private final synthetic f$2:J

.field private final synthetic f$3:Ljava/io/File;

.field private final synthetic f$4:J

.field private final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, f$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, f$1:Ljava/util/concurrent/CountDownLatch;

    iput-wide p3, p0, f$2:J

    iput-object p5, p0, f$3:Ljava/io/File;

    iput-wide p6, p0, f$4:J

    iput p8, p0, f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, f$1:Ljava/util/concurrent/CountDownLatch;

    iget-wide v2, p0, f$2:J

    iget-object v4, p0, f$3:Ljava/io/File;

    iget-wide v5, p0, f$4:J

    iget v7, p0, f$5:I

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->lambda$movePackageInternal$33$PackageManagerService(Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JI)V

    return-void
.end method

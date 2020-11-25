.class Lcom/android/providers/media/MtpService$ServerHolder;
.super Ljava/lang/Object;
.source "MtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServerHolder"
.end annotation


# instance fields
.field final database:Landroid/mtp/MtpDatabase;

.field final server:Landroid/mtp/MtpServer;


# direct methods
.method constructor <init>(Landroid/mtp/MtpServer;Landroid/mtp/MtpDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, server:Landroid/mtp/MtpServer;

    iput-object p2, p0, database:Landroid/mtp/MtpDatabase;

    return-void
.end method


# virtual methods
.method close()V
    .locals 1

    iget-object p0, p0, database:Landroid/mtp/MtpDatabase;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/mtp/MtpDatabase;->setServer(Landroid/mtp/MtpServer;)V

    return-void
.end method

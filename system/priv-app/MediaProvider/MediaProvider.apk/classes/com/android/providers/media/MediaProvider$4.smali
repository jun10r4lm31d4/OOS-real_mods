.class Lcom/android/providers/media/MediaProvider$4;
.super Ljava/lang/Object;
.source "MediaProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/MediaProvider;->updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic val$internal:Z


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0

    iput-object p1, p0, val$db:Landroid/database/sqlite/SQLiteDatabase;

    iput-boolean p2, p0, val$internal:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, val$db:Landroid/database/sqlite/SQLiteDatabase;

    iget-boolean p0, p0, val$internal:Z

    invoke-static {v0, p0}, Lcom/android/providers/media/MediaProvider;->access$500(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.class public interface abstract Lcom/android/providers/media/scan/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# direct methods
.method public static instance(Landroid/content/Context;)Lcom/android/providers/media/scan/MediaScanner;
    .locals 1

    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->ENABLE_MODERN_SCANNER:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/providers/media/scan/ModernMediaScanner;

    invoke-direct {v0, p0}, Lcom/android/providers/media/scan/ModernMediaScanner;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/providers/media/scan/LegacyMediaScanner;

    invoke-direct {v0, p0}, Lcom/android/providers/media/scan/LegacyMediaScanner;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract onDetachVolume(Ljava/lang/String;)V
.end method

.method public abstract scanDirectory(Ljava/io/File;)V
.end method

.method public abstract scanFile(Ljava/io/File;)Landroid/net/Uri;
.end method

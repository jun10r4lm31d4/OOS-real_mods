.class public final Lcom/oneplus/support/core/content/SharedPreferencesCompat$EditorCompat;
.super Ljava/lang/Object;
.source "SharedPreferencesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/content/SharedPreferencesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EditorCompat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/core/content/SharedPreferencesCompat$EditorCompat$Helper;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static sInstance:Lcom/oneplus/support/core/content/SharedPreferencesCompat$EditorCompat;


# instance fields
.field private final mHelper:Lcom/oneplus/support/core/content/SharedPreferencesCompat$EditorCompat$Helper;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/support/core/content/SharedPreferencesCompat$EditorCompat$Helper;

    invoke-direct {v0}, Lcom/oneplus/support/core/content/SharedPreferencesCompat$EditorCompat$Helper;-><init>()V

    iput-object v0, p0, mHelper:Lcom/oneplus/support/core/content/SharedPreferencesCompat$EditorCompat$Helper;

    return-void
.end method

.method public static getInstance()Lcom/oneplus/support/core/content/SharedPreferencesCompat$EditorCompat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, sInstance:Lcom/oneplus/support/core/content/SharedPreferencesCompat$EditorCompat;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/support/core/content/SharedPreferencesCompat$EditorCompat;

    invoke-direct {v0}, <init>()V

    sput-object v0, sInstance:Lcom/oneplus/support/core/content/SharedPreferencesCompat$EditorCompat;

    :cond_0
    sget-object v0, sInstance:Lcom/oneplus/support/core/content/SharedPreferencesCompat$EditorCompat;

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .param p1    # Landroid/content/SharedPreferences$Editor;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, mHelper:Lcom/oneplus/support/core/content/SharedPreferencesCompat$EditorCompat$Helper;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/content/SharedPreferencesCompat$EditorCompat$Helper;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

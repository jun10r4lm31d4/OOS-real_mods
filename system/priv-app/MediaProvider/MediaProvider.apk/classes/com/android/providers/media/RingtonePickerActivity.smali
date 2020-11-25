.class public final Lcom/android/providers/media/RingtonePickerActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Ljava/lang/Runnable;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/RingtonePickerActivity$BadgedRingtoneAdapter;,
        Lcom/android/providers/media/RingtonePickerActivity$LocalizedCursor;
    }
.end annotation


# static fields
.field private static final ADD_FILE_REQUEST_CODE:I = 0x12c

.field private static final COLUMN_LABEL:Ljava/lang/String; = "title"

.field private static final DELAY_MS_SELECTION_PLAYED:I = 0x12c

.field private static final POS_UNKNOWN:I = -0x1

.field private static final SAVE_CLICKED_POS:Ljava/lang/String; = "clicked_pos"

.field private static final SOUND_NAME_RES_PREFIX:Ljava/lang/String; = "sound_name_"

.field private static final TAG:Ljava/lang/String; = "RingtonePickerActivity"

.field private static sPlayingRingtone:Landroid/media/Ringtone;


# instance fields
.field private mAdapter:Lcom/android/providers/media/RingtonePickerActivity$BadgedRingtoneAdapter;

.field private mAttributesFlags:I

.field private mCheckedItemId:J

.field private mCurrentRingtone:Landroid/media/Ringtone;

.field private mCursor:Landroid/database/Cursor;

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field private mDefaultRingtonePos:I

.field private mExistingUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mHasDefaultItem:Z

.field private mHasSilentItem:Z

.field private mPickerUserId:I

.field private mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSampleRingtonePos:I

.field private mShowOkCancelButtons:Z

.field private mSilentPos:I

.field private mStaticItemCount:I

.field private mTargetContext:Landroid/content/Context;

.field private mType:I

.field private mUriForDefaultItem:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, mSilentPos:I

    iput v0, p0, mDefaultRingtonePos:I

    iput v0, p0, mSampleRingtonePos:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, mCheckedItemId:J

    new-instance v0, Lcom/android/providers/media/RingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/RingtonePickerActivity$1;-><init>(Lcom/android/providers/media/RingtonePickerActivity;)V

    iput-object v0, p0, mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/database/Cursor;
    .locals 0

    iget-object p0, p0, mCursor:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/providers/media/RingtonePickerActivity;)I
    .locals 0

    iget p0, p0, mStaticItemCount:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/providers/media/RingtonePickerActivity;)I
    .locals 0

    iget p0, p0, mPickerUserId:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/providers/media/RingtonePickerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, setCheckedItem(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/providers/media/RingtonePickerActivity;)Z
    .locals 0

    iget-boolean p0, p0, mShowOkCancelButtons:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/net/Uri;
    .locals 0

    invoke-direct {p0}, getCurrentlySelectedRingtoneUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/providers/media/RingtonePickerActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, setSuccessResultWithRingtone(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/providers/media/RingtonePickerActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, playRingtone(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/providers/media/RingtonePickerActivity;)I
    .locals 0

    iget p0, p0, mType:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/media/RingtoneManager;
    .locals 0

    iget-object p0, p0, mRingtoneManager:Landroid/media/RingtoneManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/providers/media/RingtonePickerActivity;)V
    .locals 0

    invoke-direct {p0}, requeryForAdapter()V

    return-void
.end method

.method private addDefaultRingtoneItem(Landroid/widget/ListView;)I
    .locals 2

    iget v0, p0, mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f080009

    invoke-direct {p0, p1, v0}, addStaticItem(Landroid/widget/ListView;I)I

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const v0, 0x7f080003

    invoke-direct {p0, p1, v0}, addStaticItem(Landroid/widget/ListView;I)I

    move-result p0

    return p0

    :cond_1
    const v0, 0x7f08000f

    invoke-direct {p0, p1, v0}, addStaticItem(Landroid/widget/ListView;I)I

    move-result p0

    return p0
.end method

.method private addNewSoundItem(Landroid/widget/ListView;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f050000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x7f040000

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget p0, p0, mType:I

    const/4 v2, 0x4

    if-ne p0, v2, :cond_0

    const/high16 p0, 0x7f080000

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    const p0, 0x7f080001

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const p0, 0x7f080002

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    return-void
.end method

.method private addSilentItem(Landroid/widget/ListView;)I
    .locals 1

    const v0, 0x104063c

    invoke-direct {p0, p1, v0}, addStaticItem(Landroid/widget/ListView;I)I

    move-result p0

    return p0
.end method

.method private addStaticItem(Landroid/widget/ListView;I)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10900f8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget p2, p0, mStaticItemCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, mStaticItemCount:I

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private getCheckedItem()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget p0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    return p0
.end method

.method private getCurrentlySelectedRingtoneUri()Landroid/net/Uri;
    .locals 2

    invoke-direct {p0}, getCheckedItem()I

    move-result v0

    iget v1, p0, mDefaultRingtonePos:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, mUriForDefaultItem:Landroid/net/Uri;

    return-object p0

    :cond_0
    invoke-direct {p0}, getCheckedItem()I

    move-result v0

    iget v1, p0, mSilentPos:I

    if-ne v0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v0, p0, mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-direct {p0}, getCheckedItem()I

    move-result v1

    invoke-direct {p0, v1}, getRingtoneManagerPosition(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private getListPosition(I)I
    .locals 0

    if-gez p1, :cond_0

    return p1

    :cond_0
    iget p0, p0, mStaticItemCount:I

    add-int/2addr p1, p0

    return p1
.end method

.method private getRingtone(I)Landroid/media/Ringtone;
    .locals 0

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {p0, p1}, Landroid/media/RingtoneManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object p0

    return-object p0
.end method

.method private getRingtoneManagerPosition(I)I
    .locals 0

    iget p0, p0, mStaticItemCount:I

    sub-int/2addr p1, p0

    return p1
.end method

.method private initRingtoneManager()V
    .locals 4

    new-instance v0, Landroid/media/RingtoneManager;

    iget-object v1, p0, mTargetContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, mRingtoneManager:Landroid/media/RingtoneManager;

    iget v0, p0, mType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1, v0}, Landroid/media/RingtoneManager;->setType(I)V

    :cond_0
    new-instance v0, Lcom/android/providers/media/RingtonePickerActivity$LocalizedCursor;

    iget-object v1, p0, mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "title"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/media/RingtonePickerActivity$LocalizedCursor;-><init>(Landroid/database/Cursor;Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v0, p0, mCursor:Landroid/database/Cursor;

    return-void
.end method

.method private playRingtone(II)V
    .locals 2

    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput p1, p0, mSampleRingtonePos:I

    iget-object p1, p0, mHandler:Landroid/os/Handler;

    int-to-long v0, p2

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private requeryForAdapter()V
    .locals 7

    invoke-direct {p0}, initRingtoneManager()V

    iget-object v0, p0, mAdapter:Lcom/android/providers/media/RingtonePickerActivity$BadgedRingtoneAdapter;

    iget-object v1, p0, mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, mAdapter:Lcom/android/providers/media/RingtonePickerActivity$BadgedRingtoneAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, mAdapter:Lcom/android/providers/media/RingtonePickerActivity$BadgedRingtoneAdapter;

    invoke-virtual {v1, v0}, Lcom/android/providers/media/RingtonePickerActivity$BadgedRingtoneAdapter;->getItemId(I)J

    move-result-wide v3

    iget-wide v5, p0, mCheckedItemId:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, getListPosition(I)I

    move-result v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    iget-boolean v1, p0, mHasSilentItem:Z

    if-eqz v1, :cond_2

    if-ne v0, v2, :cond_2

    iget v0, p0, mSilentPos:I

    :cond_2
    invoke-direct {p0, v0}, setCheckedItem(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void
.end method

.method private saveAnyPlayingRingtone()V
    .locals 1

    iget-object v0, p0, mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, mDefaultRingtone:Landroid/media/Ringtone;

    sput-object p0, sPlayingRingtone:Landroid/media/Ringtone;

    goto :goto_0

    :cond_0
    iget-object v0, p0, mCurrentRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, mCurrentRingtone:Landroid/media/Ringtone;

    sput-object p0, sPlayingRingtone:Landroid/media/Ringtone;

    :cond_1
    :goto_0
    return-void
.end method

.method private setCheckedItem(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    iget-object v0, p0, mAdapter:Lcom/android/providers/media/RingtonePickerActivity$BadgedRingtoneAdapter;

    invoke-direct {p0, p1}, getRingtoneManagerPosition(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/providers/media/RingtonePickerActivity$BadgedRingtoneAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, mCheckedItemId:J

    return-void
.end method

.method private setSuccessResultWithRingtone(Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/app/AlertActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private stopAnyPlayingRingtone()V
    .locals 1

    sget-object v0, sPlayingRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, sPlayingRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, sPlayingRingtone:Landroid/media/Ringtone;

    iget-object v0, p0, mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_1
    iget-object p0, p0, mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/AlertActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x12c

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    new-instance p1, Lcom/android/providers/media/RingtonePickerActivity$2;

    invoke-direct {p1, p0}, Lcom/android/providers/media/RingtonePickerActivity$2;-><init>(Lcom/android/providers/media/RingtonePickerActivity;)V

    const/4 p0, 0x1

    new-array p0, p0, [Landroid/net/Uri;

    const/4 p2, 0x0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    aput-object p3, p0, p2

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iget-object v0, p0, mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    if-eqz p2, :cond_1

    invoke-direct {p0}, getCurrentlySelectedRingtoneUri()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, setSuccessResultWithRingtone(Landroid/net/Uri;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, mPickerUserId:I

    iput-object p0, p0, mTargetContext:Landroid/content/Context;

    const/4 v1, -0x1

    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, mType:I

    invoke-direct {p0}, initRingtoneManager()V

    const/4 v2, 0x1

    const-string v3, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, mHasDefaultItem:Z

    const-string v3, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, mUriForDefaultItem:Landroid/net/Uri;

    iget-object v3, p0, mUriForDefaultItem:Landroid/net/Uri;

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-nez v3, :cond_3

    iget v3, p0, mType:I

    if-ne v3, v5, :cond_0

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    iput-object v3, p0, mUriForDefaultItem:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    if-ne v3, v4, :cond_1

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    iput-object v3, p0, mUriForDefaultItem:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    if-ne v3, v2, :cond_2

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v3, p0, mUriForDefaultItem:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v3, p0, mUriForDefaultItem:Landroid/net/Uri;

    :cond_3
    :goto_0
    const-string v3, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, mHasSilentItem:Z

    iget v3, p0, mAttributesFlags:I

    const/4 v6, 0x0

    const-string v7, "android.intent.extra.ringtone.AUDIO_ATTRIBUTES_FLAGS"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    or-int/2addr v3, v6

    iput v3, p0, mAttributesFlags:I

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v6, 0x7f010000

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, mShowOkCancelButtons:Z

    iget-object v3, p0, mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v3}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/app/AlertActivity;->setVolumeControlStream(I)V

    const-string v3, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, mExistingUri:Landroid/net/Uri;

    new-instance v3, Lcom/android/providers/media/RingtonePickerActivity$BadgedRingtoneAdapter;

    iget-object v6, p0, mCursor:Landroid/database/Cursor;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    iget v8, p0, mPickerUserId:I

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v7

    invoke-direct {v3, p0, p0, v6, v7}, Lcom/android/providers/media/RingtonePickerActivity$BadgedRingtoneAdapter;-><init>(Lcom/android/providers/media/RingtonePickerActivity;Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object v3, p0, mAdapter:Lcom/android/providers/media/RingtonePickerActivity$BadgedRingtoneAdapter;

    if-eqz p1, :cond_4

    const-string v3, "clicked_pos"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, setCheckedItem(I)V

    :cond_4
    iget-object p1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, mAdapter:Lcom/android/providers/media/RingtonePickerActivity$BadgedRingtoneAdapter;

    iput-object v1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const-string v1, "title"

    iput-object v1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    iput-boolean v2, p1, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-boolean v1, p0, mShowOkCancelButtons:Z

    if-eqz v1, :cond_5

    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    :cond_5
    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    const-string v1, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_8

    iget v0, p0, mType:I

    if-ne v0, v4, :cond_6

    const v0, 0x104063a

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_6
    if-ne v0, v5, :cond_7

    const v0, 0x104063b

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_7
    const v0, 0x1040639

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, mCursor:Landroid/database/Cursor;

    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, mCursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    iget p2, p0, mStaticItemCount:I

    add-int/2addr p1, p2

    if-lt p3, p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x12c

    invoke-direct {p0, p3, p1}, playRingtone(II)V

    iget-boolean p1, p0, mShowOkCancelButtons:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, getCurrentlySelectedRingtoneUri()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, setSuccessResultWithRingtone(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, stopAnyPlayingRingtone()V

    :cond_0
    return-void
.end method

.method public onPrepareListView(Landroid/widget/ListView;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, mStaticItemCount:I

    iget-boolean v0, p0, mHasDefaultItem:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, addDefaultRingtoneItem(Landroid/widget/ListView;)I

    move-result v0

    iput v0, p0, mDefaultRingtonePos:I

    invoke-direct {p0}, getCheckedItem()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, mExistingUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, mDefaultRingtonePos:I

    invoke-direct {p0, v0}, setCheckedItem(I)V

    :cond_0
    iget-boolean v0, p0, mHasSilentItem:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, addSilentItem(Landroid/widget/ListView;)I

    move-result v0

    iput v0, p0, mSilentPos:I

    invoke-direct {p0}, getCheckedItem()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, mExistingUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget v0, p0, mSilentPos:I

    invoke-direct {p0, v0}, setCheckedItem(I)V

    :cond_1
    invoke-direct {p0}, getCheckedItem()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v1, p0, mExistingUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, getListPosition(I)I

    move-result v0

    invoke-direct {p0, v0}, setCheckedItem(I)V

    :cond_2
    iget-boolean v0, p0, mShowOkCancelButtons:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, getCurrentlySelectedRingtoneUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, setSuccessResultWithRingtone(Landroid/net/Uri;)V

    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, addNewSoundItem(Landroid/widget/ListView;)V

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-direct {p0}, getCheckedItem()I

    move-result p0

    const-string v0, "clicked_pos"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, stopAnyPlayingRingtone()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, saveAnyPlayingRingtone()V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 3

    invoke-direct {p0}, stopAnyPlayingRingtone()V

    iget v0, p0, mSampleRingtonePos:I

    iget v1, p0, mSilentPos:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, mDefaultRingtonePos:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, mDefaultRingtone:Landroid/media/Ringtone;

    if-nez v0, :cond_1

    iget-object v0, p0, mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, mDefaultRingtone:Landroid/media/Ringtone;

    :cond_1
    iget-object v0, p0, mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_2

    iget-object v1, p0, mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    :cond_2
    iget-object v0, p0, mDefaultRingtone:Landroid/media/Ringtone;

    const/4 v1, 0x0

    iput-object v1, p0, mCurrentRingtone:Landroid/media/Ringtone;

    goto :goto_0

    :cond_3
    iget-object v1, p0, mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-direct {p0, v0}, getRingtoneManagerPosition(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, mCurrentRingtone:Landroid/media/Ringtone;

    :goto_0
    if-eqz v0, :cond_5

    iget v1, p0, mAttributesFlags:I

    if-eqz v1, :cond_4

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-virtual {v0}, Landroid/media/Ringtone;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    iget p0, p0, mAttributesFlags:I

    invoke-virtual {v1, p0}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    :cond_4
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    :cond_5
    return-void
.end method

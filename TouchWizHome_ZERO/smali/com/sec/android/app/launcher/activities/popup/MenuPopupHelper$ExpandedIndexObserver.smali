.class Lcom/sec/android/app/launcher/activities/popup/MenuPopupHelper$ExpandedIndexObserver;
.super Landroid/database/DataSetObserver;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/popup/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedIndexObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/popup/MenuPopupHelper;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/launcher/activities/popup/MenuPopupHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/popup/MenuPopupHelper$ExpandedIndexObserver;->this$0:Lcom/sec/android/app/launcher/activities/popup/MenuPopupHelper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/activities/popup/MenuPopupHelper;Lcom/sec/android/app/launcher/activities/popup/MenuPopupHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/popup/MenuPopupHelper$ExpandedIndexObserver;-><init>(Lcom/sec/android/app/launcher/activities/popup/MenuPopupHelper;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/popup/MenuPopupHelper$ExpandedIndexObserver;->this$0:Lcom/sec/android/app/launcher/activities/popup/MenuPopupHelper;

    # getter for: Lcom/sec/android/app/launcher/activities/popup/MenuPopupHelper;->mAdapter:Lcom/sec/android/app/launcher/activities/popup/MenuPopupHelper$MenuAdapter;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/popup/MenuPopupHelper;->access$500(Lcom/sec/android/app/launcher/activities/popup/MenuPopupHelper;)Lcom/sec/android/app/launcher/activities/popup/MenuPopupHelper$MenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/popup/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    return-void
.end method

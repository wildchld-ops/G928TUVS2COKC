.class Lcom/sec/android/app/launcher/activities/LauncherActivity$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHostContainer()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private dummyProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$2;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    new-instance v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$2$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$2$1;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity$2;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$2;->dummyProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const/high16 v0, 0x10000

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$2;->dummyProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object v0
.end method

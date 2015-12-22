.class Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$7;
.super Landroid/view/View$AccessibilityDelegate;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field dummyProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

.field final synthetic this$2:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$7;->this$2:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    new-instance v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$7$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$7$1;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$7;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$7;->dummyProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    return-void
.end method


# virtual methods
.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$7;->dummyProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object v0
.end method

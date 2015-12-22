.class Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->onNativeInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v12, 0x1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    new-instance v1, Lcom/sec/daliviews/views/ContainerView;

    invoke-direct {v1}, Lcom/sec/daliviews/views/ContainerView;-><init>()V

    # setter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1802(Lcom/sec/android/app/launcher/activities/LauncherActivity;Lcom/sec/daliviews/views/ContainerView;)Lcom/sec/daliviews/views/ContainerView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1800(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    new-instance v1, Lcom/sec/daliviews/layouts/FrameLayout;

    invoke-direct {v1}, Lcom/sec/daliviews/layouts/FrameLayout;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setLayout(Lcom/sec/daliviews/layouts/LayoutBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1800(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isRTLLayout()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1800(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/sec/daliviews/views/ContainerView;->setLayoutDirection(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    invoke-virtual {v0, v12}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->attachRootView(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # invokes: Lcom/sec/android/app/launcher/activities/LauncherActivity;->initNativeEvent()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2600(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # invokes: Lcom/sec/android/app/launcher/activities/LauncherActivity;->initDragAndDrop()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2700(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # invokes: Lcom/sec/android/app/launcher/activities/LauncherActivity;->initViewModes()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2800(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->SetupLauncherActivity()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVisibleFragmentId:I
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2900(Lcom/sec/android/app/launcher/activities/LauncherActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2100(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$5;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->onNativeInit(Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v11, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    new-instance v0, Lcom/sec/android/app/launcher/activities/Accessibility;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1500(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/view/SurfaceView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v2, v2, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1800(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v3, v3, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2100(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v4, v4, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2200(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v4

    if-nez v4, :cond_6

    move-object v4, v10

    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v5, v5, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2300(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/launcher/activities/Accessibility;-><init>(Landroid/view/SurfaceView;Lcom/sec/daliviews/views/ContainerView;Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)V

    # setter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;
    invoke-static {v11, v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$502(Lcom/sec/android/app/launcher/activities/LauncherActivity;Lcom/sec/android/app/launcher/activities/Accessibility;)Lcom/sec/android/app/launcher/activities/Accessibility;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mActivityRoot:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$300(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$6;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1500(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/view/SurfaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$500(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1500(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/view/SurfaceView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setImportantForAccessibility(I)V

    new-instance v7, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$7;

    invoke-direct {v7, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$7;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2100(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getView()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8, v7}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2200(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v0

    if-nez v0, :cond_7

    move-object v6, v10

    :goto_3
    if-eqz v6, :cond_2

    invoke-virtual {v6, v7}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2300(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getView()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9, v7}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v10, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    new-instance v0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->gInstance:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$100()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->gInstance:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$100()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v3, v3, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1500(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/view/SurfaceView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v4, v4, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1800(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v5, v5, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2100(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/view/SurfaceView;Lcom/sec/daliviews/views/ContainerView;Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    iput-object v0, v10, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mKeyboardAndMouseHandler:Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mNativeApp:Lcom/sec/daliviews/views/NativeApp;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->access$3100(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;)Lcom/sec/daliviews/views/NativeApp;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/launcher/data/LauncherResourceConnector;

    invoke-direct {v1}, Lcom/sec/android/app/launcher/data/LauncherResourceConnector;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeApp;->setResourceConnector(Lcom/sec/daliviews/resource/ResourceConnector;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    # setter for: Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mInitialised:Z
    invoke-static {v0, v12}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->access$2402(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mSurfaceChanged:Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->access$3200(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mXdpi:F
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->access$3300(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mYdpi:F
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->access$3400(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mWidth:I
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->access$3500(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mHeight:I
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->access$3600(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->surfaceChanged(FFII)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setFeatures()V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1800(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ContainerView;->setLayoutDirection(I)V

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2200(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2200(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$1;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/AppsFragment;->onNativeInit(Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->access$3000(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$2;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->access$3000(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$3;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->showSettingPreferenceFragment()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->access$3000(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$4;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v4, v4, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2200(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v4

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2200(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getView()Landroid/view/View;

    move-result-object v6

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

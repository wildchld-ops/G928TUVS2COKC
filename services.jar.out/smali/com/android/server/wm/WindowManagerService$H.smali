.class final Lcom/android/server/wm/WindowManagerService$H;
.super Landroid/os/Handler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final ADD_STARTING:I = 0x5

.field public static final ALL_WINDOWS_DRAWN:I = 0x21

.field public static final APP_FREEZE_TIMEOUT:I = 0x11

.field public static final APP_TRANSITION_TIMEOUT:I = 0xd

.field public static final BOOT_TIMEOUT:I = 0x17

.field public static final CHECK_IF_BOOT_ANIMATION_FINISHED:I = 0x25

.field public static final CLIENT_FREEZE_TIMEOUT:I = 0x1e

.field public static final DO_ANIMATION_CALLBACK:I = 0x1a

.field public static final DO_DISPLAY_ADDED:I = 0x1b

.field public static final DO_DISPLAY_CHANGED:I = 0x1d

.field public static final DO_DISPLAY_REMOVED:I = 0x1c

.field public static final DO_TRAVERSAL:I = 0x4

.field public static final DRAG_END_TIMEOUT:I = 0x15

.field public static final DRAG_START_TIMEOUT:I = 0x14

.field public static final DRAW_STACK_FOCUS_CHANGE:I = 0x64

.field public static final DUALSCREEN_TRANSITION_TIMEOUT:I = 0xc9

.field public static final ENABLE_SCREEN:I = 0x10

.field public static final FINISHED_STARTING:I = 0x7

.field public static final FORCE_GC:I = 0xf

.field public static final KNOX_KEYGUARD_EVENT:I = 0x27

.field public static final MULTIWINDOW_GESTURE_HELP_SHOW:I = 0x66

.field public static final MULTIWINDOW_STYLE_CHANGING_TIMEOUT:I = 0x68

.field public static final MULTIWINDOW_TRANSACTION_TIMEOUT:I = 0x65

.field public static final NEW_ANIMATOR_SCALE:I = 0x22

.field public static final NOTIFY_ACTIVITY_DRAWN:I = 0x20

.field public static final NOTIFY_MULTIWINDOW_MINIMIZED:I = 0x67

.field public static final PERSIST_ANIMATION_SCALE:I = 0xe

.field public static final REMOVE_STARTING:I = 0x6

.field public static final REPORT_APPLICATION_TOKEN_DRAWN:I = 0x9

.field public static final REPORT_APPLICATION_TOKEN_WINDOWS:I = 0x8

.field public static final REPORT_FOCUS_CHANGE:I = 0x2

.field public static final REPORT_HARD_KEYBOARD_STATUS_CHANGE:I = 0x16

.field public static final REPORT_LOSING_FOCUS:I = 0x3

.field public static final REPORT_WINDOWS_CHANGE:I = 0x13

.field public static final RESET_ANR_MESSAGE:I = 0x26

.field public static final SEND_NEW_CONFIGURATION:I = 0x12

.field public static final SEND_NOTIFY_DISPLAY_FREEZE_STOPPED:I = 0x6a

.field public static final SET_COVER_SWITCH_STATE:I = 0x69

.field public static final SHOW_CIRCULAR_DISPLAY_MASK:I = 0x23

.field public static final SHOW_EMULATOR_DISPLAY_OVERLAY:I = 0x24

.field public static final SHOW_STRICT_MODE_VIOLATION:I = 0x19

.field public static final TAP_OUTSIDE_STACK:I = 0x1f

.field public static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x18

.field public static final WINDOW_FREEZE_TIMEOUT:I = 0xb


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 59

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v19, v0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_2

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v32

    iput-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    if-eqz v32, :cond_3

    if-eqz v29, :cond_3

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v29, 0x0

    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v19, :cond_4

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/AccessibilityController;->onWindowFocusChangedNotLocked()V

    :cond_4
    if-eqz v32, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mSkipFocusChange:Z

    if-nez v2, :cond_5

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->notifyFocusChanged()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$700(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {v44 .. v44}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v58

    new-instance v33, Landroid/content/Intent;

    const-string v2, "com.sec.android.action.NOTIFY_FOCUS_WINDOWS"

    move-object/from16 v0, v33

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.extra.ARRAGE_TYPE"

    move-object/from16 v0, v33

    move/from16 v1, v58

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_6
    if-eqz v29, :cond_7

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v3, 0x3e9

    const/16 v4, 0x65

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/input/InputManagerService;->reloadMousePointerIcon(IIILandroid/graphics/Point;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mbEnableHoveringUI:Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$800(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v3, 0x2711

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/input/InputManagerService;->reloadPointerIcon(IIILandroid/graphics/Point;I)V

    goto/16 :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v27, 0x0

    :goto_1
    move/from16 v0, v27

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mTraversalScheduled:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$400(Lcom/android/server/wm/WindowManagerService;)V

    monitor-exit v3

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/util/Pair;

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v31

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v52

    if-eqz v52, :cond_f

    const-string/jumbo v2, "originalUserId"

    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    :goto_2
    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v39, v0

    if-eqz v39, :cond_0

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_8

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/android/server/wm/StartingData;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/16 v53, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    :try_start_5
    move-object/from16 v0, v57

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, v57

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    move/from16 v37, v0

    move-object/from16 v0, v57

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    move/from16 v0, v37

    invoke-virtual {v2, v0}, Lcom/android/server/wm/CustomStartingWindowData;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v13

    if-nez v13, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mCustomStartingWindowManager:Lcom/android/server/wm/CustomStartingWindowManager;
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/CustomStartingWindowManager;

    move-result-object v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mCustomStartingWindowManager:Lcom/android/server/wm/CustomStartingWindowManager;
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/CustomStartingWindowManager;

    move-result-object v2

    move-object/from16 v0, v57

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/CustomStartingWindowManager;->getStartingWindowLayoutResId(Lcom/android/server/wm/CustomStartingWindowData;I)I

    move-result v14

    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v57

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/android/server/wm/StartingData;->pkg:Ljava/lang/String;

    move-object/from16 v0, v39

    iget v5, v0, Lcom/android/server/wm/StartingData;->theme:I

    move-object/from16 v0, v39

    iget-object v6, v0, Lcom/android/server/wm/StartingData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, v39

    iget-object v7, v0, Lcom/android/server/wm/StartingData;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v39

    iget v8, v0, Lcom/android/server/wm/StartingData;->labelRes:I

    move-object/from16 v0, v39

    iget v9, v0, Lcom/android/server/wm/StartingData;->icon:I

    move-object/from16 v0, v39

    iget v10, v0, Lcom/android/server/wm/StartingData;->logo:I

    move-object/from16 v0, v39

    iget v11, v0, Lcom/android/server/wm/StartingData;->windowFlags:I

    move-object/from16 v0, v57

    iget-object v12, v0, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-interface/range {v2 .. v16}, Landroid/view/WindowManagerPolicy;->addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/graphics/Bitmap;III)Landroid/view/View;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v53

    :goto_4
    if-eqz v53, :cond_15

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_6
    move-object/from16 v0, v57

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v2, :cond_a

    move-object/from16 v0, v57

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-nez v2, :cond_14

    :cond_a
    move-object/from16 v0, v57

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_11

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_b

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aborted starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": removed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v57

    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " startingData="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v57

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, v57

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    move-object/from16 v0, v57

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    const/16 v18, 0x1

    :cond_c
    :goto_5
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_d

    if-nez v18, :cond_d

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": startingWindow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v57

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " startingView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v57

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v57

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->clearStartingWindowTargetAppTokenLocked(Lcom/android/server/wm/AppWindowToken;)V

    :cond_e
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v18, :cond_0

    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v57

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, v53

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V

    move-object/from16 v0, v57

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    if-eqz v2, :cond_0

    move-object/from16 v0, v57

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    iget-boolean v2, v2, Lcom/android/server/wm/CustomStartingWindowData;->bitmapIsLoaded:Z

    if-eqz v2, :cond_0

    const-string v2, "WindowManager"

    const-string v3, "CustomStartingWindow call GC after remove starting window"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xf

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v26

    const-string v2, "WindowManager"

    const-string v3, "Exception when removing starting window"

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_2

    :cond_10
    :try_start_8
    move-object/from16 v0, v57

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/CustomStartingWindowData;->bitmapIsLoaded:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v26

    const-string v2, "WindowManager"

    const-string v3, "Exception when adding starting window"

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :cond_11
    :try_start_9
    move-object/from16 v0, v57

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mNextStartingWindowAppToken:Lcom/android/server/wm/AppWindowToken;
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    if-eqz v2, :cond_13

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_12

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ensure that the startingView of moved starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mNextStartingWindowAppToken:Lcom/android/server/wm/AppWindowToken;
    invoke-static {v5}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mNextStartingWindowAppToken:Lcom/android/server/wm/AppWindowToken;
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    move-object/from16 v0, v53

    iput-object v0, v2, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wm/WindowManagerService;->mNextStartingWindowAppToken:Lcom/android/server/wm/AppWindowToken;
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$1002(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AppWindowToken;)Lcom/android/server/wm/AppWindowToken;

    goto/16 :goto_5

    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v2

    :cond_13
    :try_start_a
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_c

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A view is not assigned to the startingView: starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " next starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mNextStartingWindowAppToken:Lcom/android/server/wm/AppWindowToken;
    invoke-static {v5}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, v53

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/16 :goto_5

    :cond_15
    const/4 v2, 0x0

    move-object/from16 v0, v57

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v57

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->clearStartingWindowTargetAppTokenLocked(Lcom/android/server/wm/AppWindowToken;)V

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Lcom/android/server/wm/AppWindowToken;

    const/16 v48, 0x0

    const/16 v53, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_b
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_16

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remove starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": startingWindow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v57

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " startingView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v57

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    move-object/from16 v0, v57

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_17

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v53, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v48, v0

    const/4 v2, 0x0

    move-object/from16 v0, v57

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    const/4 v2, 0x0

    move-object/from16 v0, v57

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    const/4 v2, 0x0

    move-object/from16 v0, v57

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    move-object/from16 v0, v57

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    const/4 v2, 0x0

    move-object/from16 v0, v57

    iput v2, v0, Lcom/android/server/wm/AppWindowToken;->startingAnimLayerAdjustment:I

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v57

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->clearStartingWindowTargetAppTokenLocked(Lcom/android/server/wm/AppWindowToken;)V

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz v53, :cond_0

    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v48

    move-object/from16 v1, v53

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V

    move-object/from16 v0, v57

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    if-eqz v2, :cond_0

    move-object/from16 v0, v57

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    iget-boolean v2, v2, Lcom/android/server/wm/CustomStartingWindowData;->bitmapIsLoaded:Z

    if-eqz v2, :cond_0

    const-string v2, "WindowManager"

    const-string v3, "CustomStartingWindow call GC after remove starting window"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xf

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v26

    const-string v2, "WindowManager"

    const-string v3, "Exception when removing starting window"

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v2

    :sswitch_6
    const/16 v48, 0x0

    const/16 v53, 0x0

    :cond_18
    :goto_6
    const/16 v57, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-gtz v17, :cond_19

    monitor-exit v3

    goto/16 :goto_0

    :catchall_5
    move-exception v2

    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v2

    :cond_19
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    add-int/lit8 v4, v17, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v57, v0

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_1a

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": startingWindow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v57

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " startingView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v57

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    move-object/from16 v0, v57

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_1b

    monitor-exit v3

    goto :goto_6

    :cond_1b
    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v53, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v48, v0

    const/4 v2, 0x0

    move-object/from16 v0, v57

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    const/4 v2, 0x0

    move-object/from16 v0, v57

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    const/4 v2, 0x0

    move-object/from16 v0, v57

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    move-object/from16 v0, v57

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    const/4 v2, 0x0

    move-object/from16 v0, v57

    iput v2, v0, Lcom/android/server/wm/AppWindowToken;->startingAnimLayerAdjustment:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v57

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->clearStartingWindowTargetAppTokenLocked(Lcom/android/server/wm/AppWindowToken;)V

    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v48

    move-object/from16 v1, v53

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V

    move-object/from16 v0, v57

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    if-eqz v2, :cond_18

    move-object/from16 v0, v57

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    iget-boolean v2, v2, Lcom/android/server/wm/CustomStartingWindowData;->bitmapIsLoaded:Z

    if-eqz v2, :cond_18

    const-string v2, "WindowManager"

    const-string v3, "CustomStartingWindow call GC after remove starting window"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xf

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    goto/16 :goto_6

    :catch_3
    move-exception v26

    const-string v2, "WindowManager"

    const-string v3, "Exception when removing starting window"

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Lcom/android/server/wm/AppWindowToken;

    :try_start_11
    move-object/from16 v0, v57

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsDrawn()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v2

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1c

    const/16 v35, 0x1

    :goto_7
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_1d

    const/16 v34, 0x1

    :goto_8
    if-eqz v35, :cond_1e

    :try_start_12
    move-object/from16 v0, v57

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsVisible()V

    goto/16 :goto_0

    :catch_5
    move-exception v2

    goto/16 :goto_0

    :cond_1c
    const/16 v35, 0x0

    goto :goto_7

    :cond_1d
    const/16 v34, 0x0

    goto :goto_8

    :cond_1e
    move-object/from16 v0, v57

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsGone()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_5

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_13
    const-string v2, "WindowManager"

    const-string v4, "Window freeze timeout expired."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/wm/WindowManagerService;->mFreezeTimeout:Z
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$1102(Lcom/android/server/wm/WindowManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Lcom/android/server/wm/WindowList;->size()I

    move-result v27

    :goto_9
    if-lez v27, :cond_20

    add-int/lit8 v27, v27, -0x1

    move-object/from16 v0, v56

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v54

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v2, :cond_1f

    const/4 v2, 0x0

    move-object/from16 v0, v54

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-wide v6, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v4, v6

    long-to-int v2, v4

    move-object/from16 v0, v54

    iput v2, v0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Force clearing orientation change: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    invoke-virtual/range {v54 .. v54}, Lcom/android/server/wm/WindowState;->stopWaitingForOrientation()V

    goto :goto_9

    :catchall_6
    move-exception v2

    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    throw v2

    :cond_20
    :try_start_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$400(Lcom/android/server/wm/WindowManagerService;)V

    monitor-exit v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    goto/16 :goto_0

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->setTimeout()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$400(Lcom/android/server/wm/WindowManagerService;)V

    :cond_21
    monitor-exit v3

    goto/16 :goto_0

    :catchall_7
    move-exception v2

    monitor-exit v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    throw v2

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "window_animation_scale"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "transition_animation_scale"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "animator_duration_scale"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    if-nez v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationScheduled:Z

    if-eqz v2, :cond_23

    :cond_22
    const/16 v2, 0xf

    const-wide/16 v4, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit v3

    goto/16 :goto_0

    :catchall_8
    move-exception v2

    monitor-exit v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    throw v2

    :cond_23
    :try_start_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v2, :cond_24

    monitor-exit v3

    goto/16 :goto_0

    :cond_24
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_18
    const-string v2, "WindowManager"

    const-string v4, "App freeze timeout expired."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/wm/WindowManagerService;->mFreezeTimeout:Z
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$1102(Lcom/android/server/wm/WindowManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v36

    const/16 v43, 0x0

    :goto_a
    move/from16 v0, v43

    move/from16 v1, v36

    if-ge v0, v1, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move/from16 v0, v43

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/server/wm/TaskStack;

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v45, v2, -0x1

    :goto_b
    if-ltz v45, :cond_27

    move-object/from16 v0, v46

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    iget-object v0, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v49, v2, -0x1

    :goto_c
    if-ltz v49, :cond_26

    move-object/from16 v0, v50

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v47

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v2, :cond_25

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Force clearing freeze: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v47

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    :cond_25
    add-int/lit8 v49, v49, -0x1

    goto :goto_c

    :cond_26
    add-int/lit8 v45, v45, -0x1

    goto :goto_b

    :cond_27
    add-int/lit8 v43, v43, 0x1

    goto :goto_a

    :cond_28
    monitor-exit v3

    goto/16 :goto_0

    :catchall_9
    move-exception v2

    monitor-exit v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    throw v2

    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "client-timeout"

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1200(Lcom/android/server/wm/WindowManagerService;)V

    :cond_29
    monitor-exit v3

    goto/16 :goto_0

    :catchall_a
    move-exception v2

    monitor-exit v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    throw v2

    :sswitch_10
    const/16 v2, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    goto/16 :goto_0

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1300(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$1302(Lcom/android/server/wm/WindowManagerService;Z)Z

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->notifyWindowsChanged()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1400(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_0

    :catchall_b
    move-exception v2

    :try_start_1b
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    throw v2

    :sswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Landroid/os/IBinder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->unregister()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    :cond_2a
    monitor-exit v3

    goto/16 :goto_0

    :catchall_c
    move-exception v2

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    throw v2

    :sswitch_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Landroid/os/IBinder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/DragState;->mDragResult:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->endDragLw()V

    :cond_2b
    monitor-exit v3

    goto/16 :goto_0

    :catchall_d
    move-exception v2

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    throw v2

    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->notifyHardKeyboardStatusChange()V

    goto/16 :goto_0

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performBootTimeout()V

    goto/16 :goto_0

    :sswitch_16
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_1e
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for drawn: undrawn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_e

    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :catchall_e
    move-exception v2

    :try_start_1f
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    throw v2

    :sswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/wm/WindowManagerService;->showStrictModeViolation(II)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->access$1500(Lcom/android/server/wm/WindowManagerService;II)V

    goto/16 :goto_0

    :sswitch_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2c

    const/4 v2, 0x1

    :goto_d
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowManagerService;->showCircularMask(Z)V

    goto/16 :goto_0

    :cond_2c
    const/4 v2, 0x0

    goto :goto_d

    :sswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showEmulatorDisplayOverlay()V

    goto/16 :goto_0

    :sswitch_1a
    :try_start_20
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IRemoteCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v2

    goto/16 :goto_0

    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->handleDisplayAdded(I)V

    goto/16 :goto_0

    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/wm/WindowManagerService;->handleDisplayRemovedLocked(I)V
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$1600(Lcom/android/server/wm/WindowManagerService;I)V

    monitor-exit v3

    goto/16 :goto_0

    :catchall_f
    move-exception v2

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    throw v2

    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/wm/WindowManagerService;->handleDisplayChangedLocked(I)V
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$1700(Lcom/android/server/wm/WindowManagerService;I)V

    monitor-exit v3

    goto/16 :goto_0

    :catchall_10
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_10

    throw v2

    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_23
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/DisplayContent;->stackIdFromPoint(II)I

    move-result v42

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_11

    if-ltz v42, :cond_0

    :try_start_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v3, 0x1

    move/from16 v0, v42

    invoke-interface {v2, v0, v3}, Landroid/app/IActivityManager;->setFocusedStack(IZ)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v2

    goto/16 :goto_0

    :catchall_11
    move-exception v2

    :try_start_25
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_11

    throw v2

    :sswitch_1f
    :try_start_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-interface {v3, v2}, Landroid/app/IActivityManager;->notifyActivityDrawn(Landroid/os/IBinder;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_d

    :goto_e
    const/16 v57, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v57

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v57

    # invokes: Lcom/android/server/wm/WindowManagerService;->appTokenDrawnForMultiWindowLocked(Lcom/android/server/wm/AppWindowToken;)V
    invoke-static {v2, v0}, Lcom/android/server/wm/WindowManagerService;->access$1800(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AppWindowToken;)V

    monitor-exit v3

    goto/16 :goto_0

    :catchall_12
    move-exception v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_12

    throw v2

    :sswitch_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setFocusedStackFrame(ZZ)V

    monitor-exit v3

    goto/16 :goto_0

    :catchall_13
    move-exception v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_13

    throw v2

    :sswitch_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_14

    if-eqz v22, :cond_2d

    invoke-interface/range {v22 .. v22}, Ljava/lang/Runnable;->run()V

    :cond_2d
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v38

    invoke-static/range {v38 .. v38}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/server/wm/Session;

    if-eqz v40, :cond_2e

    :try_start_2a
    move-object/from16 v0, v40

    iget-object v2, v0, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    move/from16 v0, v38

    invoke-interface {v2, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2a} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v2

    goto/16 :goto_0

    :catchall_14
    move-exception v2

    :try_start_2b
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_14

    throw v2

    :cond_2e
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    const/16 v27, 0x0

    :goto_f
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    move/from16 v0, v27

    if-ge v0, v2, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Session;

    iget-object v2, v2, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v27, v27, 0x1

    goto :goto_f

    :cond_2f
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_15

    const/16 v27, 0x0

    :goto_10
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v27

    if-ge v0, v2, :cond_0

    :try_start_2d
    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IWindowSessionCallback;

    move/from16 v0, v38

    invoke-interface {v2, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_2d} :catch_c

    :goto_11
    add-int/lit8 v27, v27, 0x1

    goto :goto_10

    :catchall_15
    move-exception v2

    :try_start_2e
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_15

    throw v2

    :sswitch_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->checkBootAnimationCompleteLocked()Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1900(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v21

    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_16

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto/16 :goto_0

    :catchall_16
    move-exception v2

    :try_start_30
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_16

    throw v2

    :sswitch_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    monitor-exit v3

    goto/16 :goto_0

    :catchall_17
    move-exception v2

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_17

    throw v2

    :sswitch_25
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/samsung/android/cover/CoverState;

    move-object/from16 v0, v24

    iget v2, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_30

    move-object/from16 v0, v24

    iget v2, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_31

    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v3, -0x1

    const/16 v4, -0x100

    const/16 v5, 0x15

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const-wide/16 v4, 0x1

    const/4 v3, 0x0

    invoke-interface {v2, v4, v5, v3}, Landroid/view/WindowManagerPolicy;->notifyCoverSwitchStateChanged(JZ)V

    goto/16 :goto_0

    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v24

    invoke-interface {v2, v0}, Landroid/view/WindowManagerPolicy;->setCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    # invokes: Lcom/android/server/wm/WindowManagerService;->setCoverConfiguration(Z)Z
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$2000(Lcom/android/server/wm/WindowManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$400(Lcom/android/server/wm/WindowManagerService;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    # invokes: Lcom/android/server/wm/WindowManagerService;->notifyCoverStateChanged(Z)V
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$2100(Lcom/android/server/wm/WindowManagerService;Z)V

    monitor-exit v3

    goto/16 :goto_0

    :catchall_18
    move-exception v2

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_18

    throw v2

    :sswitch_26
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mMultiWindowGestureDetector:Lcom/android/server/wm/MultiWindowPointerEventListener;

    if-eqz v2, :cond_0

    :try_start_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_9

    :try_start_34
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mMultiWindowGestureDetector:Lcom/android/server/wm/MultiWindowPointerEventListener;

    invoke-virtual/range {v57 .. v57}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/MultiWindowPointerEventListener;->canBeResizing(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-nez v2, :cond_32

    monitor-exit v3

    goto/16 :goto_0

    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_19

    :try_start_35
    throw v2
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_9

    :catch_9
    move-exception v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->printStackTrace()V

    :goto_12
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mMultiWindowGestureDetector:Lcom/android/server/wm/MultiWindowPointerEventListener;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showMultiWindowGestureHelp()V

    goto/16 :goto_0

    :cond_32
    :try_start_36
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_19

    goto :goto_12

    :sswitch_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_37
    const-string v2, "WindowManager"

    const-string v4, "MULTIWINDOW_TRANSACTION_TIMEOUT"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2, v15}, Lcom/android/server/wm/WindowAnimator;->getMultiWindowTransitionLocked(I)Lcom/android/server/wm/MultiWindowTransition;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/wm/MultiWindowTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/wm/MultiWindowTransition;->setTimeout()V

    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v15}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService;->finishMultiWindowTransitionLocked(Lcom/android/server/wm/DisplayContent;)V

    monitor-exit v3

    goto/16 :goto_0

    :catchall_1a
    move-exception v2

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1a

    throw v2

    :sswitch_28
    :try_start_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-interface {v3, v2}, Landroid/app/IActivityManager;->notifyMinimizeMultiWindow(Landroid/os/IBinder;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_38} :catch_a

    :try_start_39
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v20

    if-eqz v20, :cond_34

    const/4 v2, 0x1

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->mMultiWindowStyleChanging:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x68

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x68

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v2, v4, v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$400(Lcom/android/server/wm/WindowManagerService;)V

    :cond_34
    monitor-exit v3

    goto/16 :goto_0

    :catchall_1b
    move-exception v2

    monitor-exit v3
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_1b

    :try_start_3a
    throw v2
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3a} :catch_a

    :catch_a
    move-exception v2

    goto/16 :goto_0

    :sswitch_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_3b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v20

    if-eqz v20, :cond_38

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MULTIWINDOW_STYLE_CHANGING_TIMEOUT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->mMultiWindowStyleChanging:Z

    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->mWaitingForMaximizeAnim:Z

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_35
    :goto_13
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v55

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mMultiWindowStyleChanging:Z

    if-eqz v2, :cond_35

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SAFE_DEBUG:Z

    if-eqz v2, :cond_36

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mwStyle changing timeout, mMultiWindowStyleChanging = true->false, win="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    const/4 v2, 0x0

    move-object/from16 v0, v55

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mMultiWindowStyleChanging:Z

    goto :goto_13

    :catchall_1c
    move-exception v2

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1c

    throw v2

    :cond_37
    :try_start_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    :cond_38
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_1c

    goto/16 :goto_0

    :sswitch_2a
    const/16 v2, 0x6a

    :try_start_3d
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->notifyDisplayFreezeStopped()V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_3d} :catch_b

    goto/16 :goto_0

    :catch_b
    move-exception v2

    goto/16 :goto_0

    :sswitch_2b
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->showKeyguard(I)V

    goto/16 :goto_0

    :cond_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->hideKeyguard(I)V

    goto/16 :goto_0

    :catch_c
    move-exception v2

    goto/16 :goto_11

    :catch_d
    move-exception v2

    goto/16 :goto_e

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_8
        0x9 -> :sswitch_7
        0xb -> :sswitch_9
        0xd -> :sswitch_a
        0xe -> :sswitch_b
        0xf -> :sswitch_c
        0x10 -> :sswitch_d
        0x11 -> :sswitch_e
        0x12 -> :sswitch_10
        0x13 -> :sswitch_11
        0x14 -> :sswitch_12
        0x15 -> :sswitch_13
        0x16 -> :sswitch_14
        0x17 -> :sswitch_15
        0x18 -> :sswitch_16
        0x19 -> :sswitch_17
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_f
        0x1f -> :sswitch_1e
        0x20 -> :sswitch_1f
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_18
        0x24 -> :sswitch_19
        0x25 -> :sswitch_23
        0x26 -> :sswitch_24
        0x27 -> :sswitch_2b
        0x64 -> :sswitch_20
        0x65 -> :sswitch_27
        0x66 -> :sswitch_26
        0x67 -> :sswitch_28
        0x68 -> :sswitch_29
        0x69 -> :sswitch_25
        0x6a -> :sswitch_2a
        0xc9 -> :sswitch_0
    .end sparse-switch
.end method

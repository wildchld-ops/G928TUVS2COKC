.class public Lcom/android/systemui/cover/SViewCoverLauncher;
.super Ljava/lang/Object;
.source "SViewCoverLauncher.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SViewCoverLauncher"

.field private static sCoverBaseClass:Ljava/lang/Class;

.field private static sCoverBaseClassConstructor:Ljava/lang/reflect/Constructor;

.field private static sOnCoverAppCoveredMethod:Ljava/lang/reflect/Method;

.field private static sOnStatusBarStateChangedMethod:Ljava/lang/reflect/Method;

.field private static sSetCoverUiAlphaMethod:Ljava/lang/reflect/Method;

.field private static sShowCoverOpenPopupMethod:Ljava/lang/reflect/Method;

.field private static sShowCoverOpenPopupStringMethod:Ljava/lang/reflect/Method;

.field private static sUpdateCoverStateMethod:Ljava/lang/reflect/Method;

.field private static sUserActivityMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mSViewCoverBase:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClassConstructor:Ljava/lang/reflect/Constructor;

    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sUpdateCoverStateMethod:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnStatusBarStateChangedMethod:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sUserActivityMethod:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupMethod:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupStringMethod:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sSetCoverUiAlphaMethod:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnCoverAppCoveredMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/systemui/cover/SViewCoverLauncher;->isAnyEmptyReflection()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/cover/SViewCoverLauncher;->loadReflections()V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    if-nez v4, :cond_1

    sget-object v4, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClassConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    :try_start_0
    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    sget-object v4, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClassConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SViewCoverLauncher IllegalAccessException encountered invoking constructor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SViewCoverLauncher InvocationTargetException encountered invoking constructor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SViewCoverLauncher Unable to instantiate constructor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isAnyEmptyReflection()Z
    .locals 1

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClassConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sUpdateCoverStateMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnStatusBarStateChangedMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sUserActivityMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupStringMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sSetCoverUiAlphaMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnCoverAppCoveredMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadReflections()V
    .locals 6

    const-string v3, "SViewCoverLauncher"

    const-string v4, "Load reflections"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v3, "com.sec.android.cover.CoverViewMediator"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "SViewCoverLauncher"

    const-string v4, "There\'s no cover base class"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/widget/FrameLayout;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/widget/FrameLayout;

    aput-object v4, v2, v3

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClassConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/samsung/android/cover/CoverState;

    aput-object v4, v2, v3

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string v4, "updateCoverState"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sUpdateCoverStateMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string v4, "onCoverAppCovered"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnCoverAppCoveredMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string v4, "onStatusBarStateChanged"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnStatusBarStateChangedMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string v4, "showCoverOpenPopup"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupStringMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string v4, "setCoverUiAlpha"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sSetCoverUiAlphaMethod:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string v4, "userActivity"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sUserActivityMethod:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string v4, "showCoverOpenPopup"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SViewCoverLauncher Unable to instantiate class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SViewCoverLauncher No method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCoverAppCovered(Z)V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnCoverAppCoveredMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "SViewCoverLauncher"

    const-string v4, "Cannot invoke onCoverAppCovered."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnCoverAppCoveredMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SViewCoverLauncher IllegalAccessException encountered invoking onCoverAppCovered"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SViewCoverLauncher InvocationTargetException encountered invoking onCoverAppCovered "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStatusBarStateChanged(I)V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnStatusBarStateChangedMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "SViewCoverLauncher"

    const-string v4, "Cannot invoke onStatusBarStateChanged."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnStatusBarStateChangedMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SViewCoverLauncher IllegalAccessException encountered invoking onStatusBarStateChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SViewCoverLauncher InvocationTargetException encountered invoking onStatusBarStateChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCoverUiAlpha(F)V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sSetCoverUiAlphaMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "SViewCoverLauncher"

    const-string v4, "Cannot invoke setCoverUiAlpha."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sSetCoverUiAlphaMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SViewCoverLauncher IllegalAccessException encountered invoking setCoverUiAlpha"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SViewCoverLauncher InvocationTargetException encountered invoking setCoverUiAlpha "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showCoverOpenPopup()V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "SViewCoverLauncher"

    const-string v3, "Cannot invoke showCoverOpenPopup."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SViewCoverLauncher IllegalAccessException encountered invoking showCoverOpenPopup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SViewCoverLauncher InvocationTargetException encountered invoking showCoverOpenPopup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showCoverOpenPopup(Ljava/lang/String;)V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupStringMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "SViewCoverLauncher"

    const-string v4, "Cannot invoke showCoverOpenPopup."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupStringMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SViewCoverLauncher IllegalAccessException encountered invoking showCoverOpenPopup string"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SViewCoverLauncher InvocationTargetException encountered invoking showCoverOpenPopup string "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sUpdateCoverStateMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "SViewCoverLauncher"

    const-string v4, "Cannot invoke updateCoverState."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sUpdateCoverStateMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SViewCoverLauncher IllegalAccessException encountered invoking updateCoverState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SViewCoverLauncher InvocationTargetException encountered invoking updateCoverState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userActivity()V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/cover/SViewCoverLauncher;->sUserActivityMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "SViewCoverLauncher"

    const-string v3, "Cannot invoke userActivity."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/systemui/cover/SViewCoverLauncher;->sUserActivityMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SViewCoverLauncher IllegalAccessException encountered invoking userActivity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SViewCoverLauncher InvocationTargetException encountered invoking userActivity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

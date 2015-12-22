.class public final Lcom/samsung/android/app/ExecutableInfo;
.super Ljava/lang/Object;
.source "ExecutableInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/ExecutableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "ExecutableInfo"

.field private static final MD_LABEL_EXECUTABLE:Ljava/lang/String; = "com.samsung.android.support.executable"

.field private static final XML_ELEMENT_COMMAND:Ljava/lang/String; = "command"

.field private static final XML_ELEMENT_ENABLED:Ljava/lang/String; = "enabled"

.field private static final XML_ELEMENT_EXECUTABLE:Ljava/lang/String; = "executable"

.field private static final XML_ELEMENT_EXTRA_ATTR:Ljava/lang/String; = "extras-attr"

.field private static final XML_ELEMENT_EXTRA_ATTR_COMPONENTNAME:Ljava/lang/String; = "componentName"

.field private static final XML_ELEMENT_EXTRA_ATTR_INTETNACTION:Ljava/lang/String; = "action"

.field private static final XML_ELEMENT_EXTRA_ATTR_LAUCHMODE:Ljava/lang/String; = "launchMode"

.field private static final XML_ELEMENT_EXTRA_ATTR_PACKAGENAME:Ljava/lang/String; = "packageName"

.field private static final XML_ELEMENT_EXTRA_ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final XML_ELEMENT_EXTRA_ATTR_TYPE_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final XML_ELEMENT_EXTRA_ATTR_TYPE_BROADCAST:Ljava/lang/String; = "broadcast"

.field private static final XML_ELEMENT_EXTRA_ATTR_TYPE_SERVICE:Ljava/lang/String; = "service"

.field private static final XML_ELEMENT_ICON:Ljava/lang/String; = "icon"

.field private static final XML_ELEMENT_LABEL:Ljava/lang/String; = "label"

.field private static final XML_ELEMENT_LAUCHMODE_CLEARTOP:Ljava/lang/String; = "clearTop"

.field private static final XML_ELEMENT_LAUCHMODE_NEWTASK:Ljava/lang/String; = "newTask"

.field private static final XML_ELEMENT_LAUCHMODE_SINGLETOP:Ljava/lang/String; = "singleTop"


# instance fields
.field mAction:Ljava/lang/String;

.field mActivityLaunchMode:Ljava/lang/String;

.field mComponentName:Ljava/lang/String;

.field mEnabled:Z

.field mIconId:I

.field mLabelId:I

.field mLaunchType:I

.field mPackageName:Ljava/lang/String;

.field mUid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/ExecutableInfo;->DEBUG:Z

    new-instance v0, Lcom/samsung/android/app/ExecutableInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/ExecutableInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/ExecutableInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mUid:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mEnabled:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/ExecutableInfo;->mUid:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/ExecutableInfo;->mUid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mLabelId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mIconId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mLaunchType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mAction:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mComponentName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    return-void
.end method

.method private addExtraAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v3, Lcom/android/internal/R$styleable;->extrasCommand:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "launchMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lcom/samsung/android/app/ExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_1
    const-string/jumbo v3, "type"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "activity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput v4, p0, Lcom/samsung/android/app/ExecutableInfo;->mLaunchType:I

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "service"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput v5, p0, Lcom/samsung/android/app/ExecutableInfo;->mLaunchType:I

    goto :goto_0

    :cond_3
    const-string v3, "broadcast"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    iput v3, p0, Lcom/samsung/android/app/ExecutableInfo;->mLaunchType:I

    goto :goto_0

    :cond_4
    iput v4, p0, Lcom/samsung/android/app/ExecutableInfo;->mLaunchType:I

    goto :goto_0

    :cond_5
    const-string v3, "action"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iput-object v2, p0, Lcom/samsung/android/app/ExecutableInfo;->mAction:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "packageName"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iput-object v2, p0, Lcom/samsung/android/app/ExecutableInfo;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string v3, "componentName"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v2, p0, Lcom/samsung/android/app/ExecutableInfo;->mComponentName:Ljava/lang/String;

    goto :goto_0
.end method

.method private static checkValidate(Lcom/samsung/android/app/ExecutableInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_1

    sget-boolean v1, Lcom/samsung/android/app/ExecutableInfo;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ExecutableInfo"

    const-string v2, "Invalid ExecutableInfo"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/samsung/android/app/ExecutableInfo;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ExecutableInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check ExecutableInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/ExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/app/ExecutableInfo;->mEnabled:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/samsung/android/app/ExecutableInfo;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ExecutableInfo"

    const-string v2, "disabled executableInfo"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/ExecutableInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/app/ExecutableInfo;->getComponentName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    :cond_4
    sget-boolean v1, Lcom/samsung/android/app/ExecutableInfo;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ExecutableInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid packageName or componentName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/ExecutableInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/ExecutableInfo;->getComponentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/ExecutableInfo;->getLabelId()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/app/ExecutableInfo;->getIconId()I

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    sget-boolean v1, Lcom/samsung/android/app/ExecutableInfo;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ExecutableInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid label or icon = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/ExecutableInfo;->getLabelId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/ExecutableInfo;->getIconId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private static createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "ExecutableInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "ExecutableInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t make context for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getActivityMetaData(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)Lcom/samsung/android/app/ExecutableInfo;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v2, Lcom/samsung/android/app/ExecutableInfo;

    invoke-direct {v2}, Lcom/samsung/android/app/ExecutableInfo;-><init>()V

    invoke-static {p0, p2}, Lcom/samsung/android/app/ExecutableInfo;->createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    sget-object v3, Lcom/android/internal/R$styleable;->command:[I

    invoke-virtual {v1, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Lcom/samsung/android/app/ExecutableInfo;->mEnabled:Z

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v2, Lcom/samsung/android/app/ExecutableInfo;->mLabelId:I

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v2, Lcom/samsung/android/app/ExecutableInfo;->mIconId:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method public static scanExecutableInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/ExecutableInfo;",
            ">;"
        }
    .end annotation

    sget-boolean v30, Lcom/samsung/android/app/ExecutableInfo;->DEBUG:Z

    if-eqz v30, :cond_0

    const-string v30, "ExecutableInfo"

    const-string/jumbo v31, "scan ExecutableInfo start"

    invoke-static/range {v30 .. v31}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v3, "com.samsung.android.support.executable"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const/16 v18, 0x0

    const/16 v23, 0x280

    new-instance v30, Landroid/content/Intent;

    const-string v31, "com.samsung.android.support.executable"

    invoke-direct/range {v30 .. v31}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v31, 0x280

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    new-instance v30, Landroid/content/Intent;

    const-string v31, "com.samsung.android.support.executable"

    invoke-direct/range {v30 .. v31}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v31, 0x280

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v25

    new-instance v30, Landroid/content/Intent;

    const-string v31, "com.samsung.android.support.executable"

    invoke-direct/range {v30 .. v31}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v31, 0x280

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v24

    const/16 v30, 0x3

    move/from16 v0, v30

    new-array v11, v0, [Ljava/util/List;

    const/16 v30, 0x0

    aput-object v4, v11, v30

    const/16 v30, 0x1

    aput-object v25, v11, v30

    const/16 v30, 0x2

    aput-object v24, v11, v30

    move-object v6, v11

    array-length v0, v6

    move/from16 v19, v0

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    move/from16 v0, v19

    if-ge v13, v0, :cond_15

    aget-object v20, v6, v13

    sget-boolean v30, Lcom/samsung/android/app/ExecutableInfo;->DEBUG:Z

    if-eqz v30, :cond_1

    const-string v30, "ExecutableInfo"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "list size = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_14

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    const/16 v17, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x1

    const/4 v15, 0x1

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v30, v0

    if-eqz v30, :cond_7

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v30, v0

    if-nez v30, :cond_5

    const/16 v16, 0x1

    :goto_2
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    move/from16 v30, v0

    if-nez v30, :cond_6

    const/4 v15, 0x1

    :cond_3
    :goto_3
    if-nez v16, :cond_4

    if-eqz v15, :cond_a

    :cond_4
    sget-boolean v30, Lcom/samsung/android/app/ExecutableInfo;->DEBUG:Z

    if-eqz v30, :cond_2

    const-string v30, "ExecutableInfo"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "skip disable component: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const/16 v16, 0x0

    goto :goto_2

    :cond_6
    const/4 v15, 0x0

    goto :goto_3

    :cond_7
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v30, v0

    if-nez v30, :cond_8

    const/16 v16, 0x1

    :goto_4
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->enabled:Z

    move/from16 v30, v0

    if-nez v30, :cond_9

    const/4 v15, 0x1

    :goto_5
    goto :goto_3

    :cond_8
    const/16 v16, 0x0

    goto :goto_4

    :cond_9
    const/4 v15, 0x0

    goto :goto_5

    :cond_a
    new-instance v8, Landroid/content/ComponentName;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v8, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v30

    const-string v31, "com.samsung.android.support.executable"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v5, v0, v1}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v29

    if-eqz v29, :cond_2

    const/16 v18, 0x0

    const/16 v27, 0x0

    const/16 v26, 0x0

    invoke-interface/range {v29 .. v29}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v28

    :goto_6
    const/16 v30, 0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-eq v0, v1, :cond_2

    invoke-interface/range {v29 .. v29}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    const/16 v30, 0x2

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_11

    const-string v30, "executable"

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_b

    const/16 v27, 0x1

    :cond_b
    const-string v30, "command"

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_d

    if-nez v27, :cond_c

    new-instance v30, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v31, "executable element wasn\'t started"

    invoke-direct/range {v30 .. v31}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v30
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :catch_0
    move-exception v9

    const-string v30, "ExecutableInfo"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Invalid attribute in metadata for "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ": "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_c
    const/16 v26, 0x1

    :try_start_1
    invoke-static/range {v29 .. v29}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/samsung/android/app/ExecutableInfo;->getActivityMetaData(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)Lcom/samsung/android/app/ExecutableInfo;

    move-result-object v18

    :cond_d
    const-string v30, "extras-attr"

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_10

    if-eqz v27, :cond_e

    if-nez v26, :cond_f

    :cond_e
    new-instance v30, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v31, "executable or command element wasn\'t started"

    invoke-direct/range {v30 .. v31}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v30
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :catch_1
    move-exception v9

    const-string v30, "ExecutableInfo"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Reading ExecutableInfo metadata for "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v9}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_f
    :try_start_2
    invoke-static/range {v29 .. v29}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    if-eqz v18, :cond_10

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/app/ExecutableInfo;->addExtraAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :cond_10
    :goto_7
    invoke-interface/range {v29 .. v29}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v28

    goto/16 :goto_6

    :cond_11
    const/16 v30, 0x3

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_10

    const-string v30, "executable"

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_12

    const/16 v27, 0x0

    :cond_12
    const-string v30, "command"

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_10

    const/16 v26, 0x0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/app/ExecutableInfo;->checkValidate(Lcom/samsung/android/app/ExecutableInfo;)Z

    move-result v30

    if-eqz v30, :cond_13

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/samsung/android/app/ExecutableInfo;->setId(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_13
    const/16 v18, 0x0

    goto :goto_7

    :catch_2
    move-exception v9

    const-string v30, "ExecutableInfo"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Reading ExecutableInfo metadata for "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v9}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catch_3
    move-exception v9

    const-string v30, "ExecutableInfo"

    const-string v31, "Unknown Exception while Reading ExecutableInfo metadata"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v9}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_14
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto/16 :goto_0

    :cond_15
    sget-boolean v30, Lcom/samsung/android/app/ExecutableInfo;->DEBUG:Z

    if-eqz v30, :cond_16

    const-string v30, "ExecutableInfo"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "scan ExecutableInfo end: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_16

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/app/ExecutableInfo;

    const-string v30, "ExecutableInfo"

    invoke-virtual {v14}, Lcom/samsung/android/app/ExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_16
    return-object v21
.end method

.method private setId(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/ExecutableInfo;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/ExecutableInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/ExecutableInfo;->getComponentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/ExecutableInfo;->getLaunchType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "executable"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/ExecutableInfo;->mUid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityLaunchMode()I
    .locals 7

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/samsung/android/app/ExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/app/ExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/ExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    const-string v6, "\\|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_5

    aget-object v3, v4, v2

    const-string/jumbo v5, "newTask"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/high16 v5, 0x10000000

    or-int/2addr v0, v5

    :cond_2
    :goto_2
    const-string v5, "clearTop"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/high16 v5, 0x4000000

    or-int/2addr v0, v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "singleTop"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/high16 v5, 0x20000000

    or-int/2addr v0, v5

    goto :goto_2

    :cond_5
    move v1, v0

    goto :goto_0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mComponentName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mIconId:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mLabelId:I

    return v0
.end method

.method public getLaunchType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mLaunchType:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExecutableInfo{enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/ExecutableInfo;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/ExecutableInfo;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", labelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/ExecutableInfo;->mLabelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconIId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/ExecutableInfo;->mIconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/ExecutableInfo;->mLaunchType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/ExecutableInfo;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/ExecutableInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", componentName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/ExecutableInfo;->mComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", launchMode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/ExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mUid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mLabelId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mIconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mLaunchType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mComponentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/ExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

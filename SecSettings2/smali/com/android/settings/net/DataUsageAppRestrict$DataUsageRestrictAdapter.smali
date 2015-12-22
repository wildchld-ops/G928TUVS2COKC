.class public Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;
.super Landroid/widget/BaseAdapter;
.source "DataUsageAppRestrict.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/net/DataUsageAppRestrict;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataUsageRestrictAdapter"
.end annotation


# instance fields
.field private DataEntryMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/NetworkStats$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private WifiEntryMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/NetworkStats$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private bShowWifi:Ljava/lang/Boolean;

.field private knownUid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDataEnd:J

.field private mDataStart:J

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/net/DataUsageAppRestrict$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;ZLandroid/net/NetworkPolicyManager;)V
    .locals 15

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->knownUid:Ljava/util/ArrayList;

    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v12, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->DataEntryMap:Ljava/util/LinkedHashMap;

    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v12, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->WifiEntryMap:Ljava/util/LinkedHashMap;

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->bShowWifi:Ljava/lang/Boolean;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    new-instance v3, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mPm:Landroid/content/pm/PackageManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v3, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-ge v6, v12, :cond_3

    iget-object v13, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mPm:Landroid/content/pm/PackageManager;

    const-string v14, "android.permission.INTERNET"

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14, v12}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :try_start_0
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v8, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v13, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v12, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v12}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v12, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v12}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-object v12, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mPm:Landroid/content/pm/PackageManager;

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/16 v12, 0x2710

    if-lt v4, v12, :cond_0

    const/16 v12, 0x4e1f

    if-gt v4, v12, :cond_0

    const-string v13, "DataUsageAppRestrict"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DataUsageRestrictAdapter : package Name : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "  name : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " Uid : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->knownUid:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    iget-object v12, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->knownUid:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v9, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;

    invoke-direct {v9, v4, v7, v10}, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string v12, "DataUsageAppRestrict"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mItems.size() : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;)Landroid/net/NetworkPolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method


# virtual methods
.method public AddAdditionalDataUsage(IILandroid/net/NetworkStatsHistory;)V
    .locals 12

    const/4 v8, 0x0

    if-eqz p3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v2, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mDataStart:J

    iget-wide v4, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mDataEnd:J

    move-object v1, p3

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v8

    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v4, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v10, v2, v4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;

    iget v1, v9, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->uid:I

    if-ne v1, p1, :cond_1

    const-string v1, "DataUsageAppRestrict"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AddAdditionalDataUsage() Exist uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " total =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v9, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->dataTotal:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DataUsageAppRestrict"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AddAdditionalDataUsage() additionalUid uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " total =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, v9, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->dataTotal:J

    add-long/2addr v2, v10

    iput-wide v2, v9, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->dataTotal:J

    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public DataResetPreviousData()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->dataTotal:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public WifiResetPreviousData()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->wifiTotal:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bindBackgroundDataStats(Ljava/util/LinkedHashMap;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/NetworkStatsHistory;",
            ">;)V"
        }
    .end annotation

    const-string v2, "DataUsageAppRestrict"

    const-string v3, "bindDataStats NetworkStatsHistory "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->DataResetPreviousData()V

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;

    iget v2, v9, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v2, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mDataStart:J

    iget-wide v4, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mDataEnd:J

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v8

    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v4, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v10, v2, v4

    iput-wide v10, v9, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->dataTotal:J

    const-string v2, "DataUsageAppRestrict"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindDataStats  NetworkStatsHistory uid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  rx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  tx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  total"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v12, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v12

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bindDataStats(Landroid/net/NetworkStats;)V
    .locals 14

    const-string v7, "DataUsageAppRestrict"

    const-string v8, "bindDataStats "

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->DataEntryMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->clear()V

    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->DataResetPreviousData()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v3

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    iget v6, v0, Landroid/net/NetworkStats$Entry;->uid:I

    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->DataEntryMap:Ljava/util/LinkedHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->DataEntryMap:Ljava/util/LinkedHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const-string v7, "DataUsageAppRestrict"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bindDataStats  uid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  rx "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  tx "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  total"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->DataEntryMap:Ljava/util/LinkedHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkStats$Entry;

    iget-wide v8, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v8, v10

    iput-wide v8, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v8, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v8, v10

    iput-wide v8, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_3
    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;

    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->DataEntryMap:Ljava/util/LinkedHashMap;

    iget v8, v2, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->DataEntryMap:Ljava/util/LinkedHashMap;

    iget v8, v2, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStats$Entry;

    iget-wide v8, v2, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->dataTotal:J

    iget-wide v10, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    iput-wide v8, v2, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->dataTotal:J

    const-string v7, "DataUsageAppRestrict"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bindDataStats  mItems.dataTotal "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v2, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->dataTotal:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->getAppDataRestrictionType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->notifyDataSetChanged()V

    :cond_5
    return-void
.end method

.method public bindWifiStats(Landroid/net/NetworkStats;)V
    .locals 14

    const-string v7, "DataUsageAppRestrict"

    const-string v8, "bindWifiStats "

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->WifiEntryMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->clear()V

    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->WifiResetPreviousData()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v3

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    iget v6, v0, Landroid/net/NetworkStats$Entry;->uid:I

    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->WifiEntryMap:Ljava/util/LinkedHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->WifiEntryMap:Ljava/util/LinkedHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const-string v7, "DataUsageAppRestrict"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bindWifiStats  uid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  rx "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  tx "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  total"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->WifiEntryMap:Ljava/util/LinkedHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkStats$Entry;

    iget-wide v8, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v8, v10

    iput-wide v8, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v8, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v8, v10

    iput-wide v8, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_3
    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;

    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->WifiEntryMap:Ljava/util/LinkedHashMap;

    iget v8, v2, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->WifiEntryMap:Ljava/util/LinkedHashMap;

    iget v8, v2, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStats$Entry;

    iget-wide v8, v2, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->wifiTotal:J

    iget-wide v10, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    iput-wide v8, v2, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->wifiTotal:J

    const-string v7, "DataUsageAppRestrict"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bindStats  mItems.dataTotal "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v2, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->wifiTotal:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public checkNeededUid(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->knownUid:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;

    iget v0, v0, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->uid:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v4, 0x1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->bShowWifi:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v5, p2, v6}, Lcom/android/settings/net/DataAppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;Z)Lcom/android/settings/net/DataAppViewHolder;

    move-result-object v2

    iget-object p2, v2, Lcom/android/settings/net/DataAppViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;

    iget v0, v3, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->uid:I

    iget-object v5, v3, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->mLabel:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/android/settings/net/DataAppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v5, "DataUsageAppRestrict"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getView Uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v3, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    iget-object v5, v2, Lcom/android/settings/net/DataAppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v6, v3, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v5, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->bShowWifi:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/android/settings/net/DataAppViewHolder;->dataTotal:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v3, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->dataTotal:J

    invoke-static {v1, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v2, Lcom/android/settings/net/DataAppViewHolder;->wifiTotal:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wifi: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v3, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->wifiTotal:J

    invoke-static {v1, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v2, Lcom/android/settings/net/DataAppViewHolder;->dataTotal:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v5, v2, Lcom/android/settings/net/DataAppViewHolder;->dataTotal:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v5, v2, Lcom/android/settings/net/DataAppViewHolder;->dataCompoundButton:Landroid/widget/CompoundButton;

    new-instance v6, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter$1;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter$1;-><init>(Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;I)V

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v5, v2, Lcom/android/settings/net/DataAppViewHolder;->dataCompoundButton:Landroid/widget/CompoundButton;

    iget-object v6, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    # invokes: Lcom/android/settings/net/DataUsageAppRestrict;->getAppRestrictBackground(Landroid/net/NetworkPolicyManager;I)Z
    invoke-static {v6, v0}, Lcom/android/settings/net/DataUsageAppRestrict;->access$700(Landroid/net/NetworkPolicyManager;I)Z

    move-result v6

    if-nez v6, :cond_3

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-object p2

    :cond_2
    iget-object v5, v2, Lcom/android/settings/net/DataAppViewHolder;->dataTotal:Landroid/widget/TextView;

    iget-wide v6, v3, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->dataTotal:J

    invoke-static {v1, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCycle(JJ)V
    .locals 1

    iput-wide p1, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mDataStart:J

    iput-wide p3, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mDataEnd:J

    return-void
.end method

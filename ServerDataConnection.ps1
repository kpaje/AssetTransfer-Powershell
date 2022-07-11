//Styles//
Set(
    defaultLayouts,
    { width: 643 }
);
//Variables//
Concurrent(
    Set(
        kclsLogoGif,
        kclsLogo
    );
    Set(
        showDeleteItemGif,
        false
    );
    Set(
        showRefreshGif,
        false
    );
    Set(
        isloadingAnimation,
        true
    ),
    Set(
        clearInputs,
        false
    ),
    Set(
        toastUploadComplete,
        false
    ),
    Set(
        toastRecordDeleted,
        false
    ),
    Set(
        toastScanSuccess,
        false
    ),
    Set(
        toastItemAdded,
        false
    ),
    /* Set(
        restartTimer,
        false
    ),
    Set(
        startTimer,
        true
    ), */
    Set(
        assetTag,
        " "
    ),
    Set(
        clearEmployeeSearchBar,
        false
    ),
    Set(
        userName,
        User().FullName
    )
);
//Creates a local cache of the Edit Screen data connections
If (
    Connection.Connected,
    Concurrent(
        ClearCollect(
            TransToLocalCache,
            ShowColumns(
                'Transferring To',
                "Location",
                "Title"
            )
        ),
        ClearCollect(
            TransLibLocalCache,
            ShowColumns(
                'Transferring Library data',
                "Location",
                "Title"
            )
        ),
        ClearCollect(
            ItemDescLocalCache,
            ShowColumns(
                'Asset Type',
                "Number",
                "{Name}"
            )
        ),
        ClearCollect(
            assetTransferMaster,
            ShowColumns(
                'AssetTransferApp-master',
                "AssetTag_x0023_",
                "Date",
                "ItemDescription",
                / * "EnteredInCireson", * /
                / * "Notified", * /
                "Title",
                "Transferto_x003a_",
                "{Name}",
                "Test_x0020_Name"
            )
        )
    )
);
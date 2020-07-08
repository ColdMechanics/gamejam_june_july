{
    "id": "56cb5189-7105-489d-becf-93ab2a417114",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "o_explosion_particle",
    "eventList": [
        {
            "id": "c85cd62c-03aa-4bf0-93a8-ccc4d91a8c08",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "56cb5189-7105-489d-becf-93ab2a417114"
        },
        {
            "id": "44f98969-c46d-407f-99f9-2f0c203cadd1",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "56cb5189-7105-489d-becf-93ab2a417114"
        },
        {
            "id": "35fabdd0-bb67-43bb-9399-4fc865a1b6f4",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 8,
            "m_owner": "56cb5189-7105-489d-becf-93ab2a417114"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "49fe4e9d-fb92-4a83-99a4-b7b39d736bb2",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "random_range(0.075, 0.15);",
            "varName": "fade_speed",
            "varType": 4
        },
        {
            "id": "dcc467e9-2bfc-4c38-8fc1-306f3978986c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "random_range(0.25,1);",
            "varName": "scale",
            "varType": 4
        }
    ],
    "solid": false,
    "spriteId": "22e9fe3b-6054-4aa8-8a70-97968e5e4375",
    "visible": true
}